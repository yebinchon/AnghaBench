; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_utimensat.c_utimensat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_utimensat.c_utimensat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.attrlist = type { i32, i32 }

@times_now = common dso_local global %struct.timespec* null, align 8
@ATTR_BIT_MAP_COUNT = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@FSOPT_NOFOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utimensat(i32 %0, i8* %1, %struct.timespec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.timespec], align 4
  %10 = alloca i64, align 8
  %11 = alloca [2 x %struct.timespec], align 4
  %12 = alloca %struct.attrlist, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.timespec*, %struct.timespec** %7, align 8
  %15 = icmp ne %struct.timespec* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = bitcast [2 x %struct.timespec]* %9 to %struct.timespec**
  %18 = load %struct.timespec*, %struct.timespec** %7, align 8
  %19 = call i32 @memcpy(%struct.timespec** %17, %struct.timespec* %18, i32 8)
  br label %24

20:                                               ; preds = %4
  %21 = bitcast [2 x %struct.timespec]* %9 to %struct.timespec**
  %22 = load %struct.timespec*, %struct.timespec** @times_now, align 8
  %23 = call i32 @memcpy(%struct.timespec** %21, %struct.timespec* %22, i32 8)
  br label %24

24:                                               ; preds = %20, %16
  store i64 0, i64* %10, align 8
  %25 = bitcast [2 x %struct.timespec]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  %26 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %12, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %12, i32 0, i32 1
  %28 = load i32, i32* @ATTR_BIT_MAP_COUNT, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %11, i64 0, i64 0
  %31 = call i32 @prepare_times_array_and_attrs(%struct.timespec* %29, %struct.timespec* %30, i64* %10)
  %32 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %12, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @FSOPT_NOFOLLOW, align 4
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast [2 x %struct.timespec]* %11 to %struct.timespec**
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @setattrlistat(i32 %42, i8* %43, %struct.attrlist* %12, %struct.timespec** %44, i64 %45, i32 %46)
  ret i32 %47
}

declare dso_local i32 @memcpy(%struct.timespec**, %struct.timespec*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @prepare_times_array_and_attrs(%struct.timespec*, %struct.timespec*, i64*) #1

declare dso_local i32 @setattrlistat(i32, i8*, %struct.attrlist*, %struct.timespec**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
