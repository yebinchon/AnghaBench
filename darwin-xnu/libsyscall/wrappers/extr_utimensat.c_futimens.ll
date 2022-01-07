; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_utimensat.c_futimens.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/extr_utimensat.c_futimens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.attrlist = type { i32, i32 }

@times_now = common dso_local global %struct.timespec* null, align 8
@ATTR_BIT_MAP_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @futimens(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca [2 x %struct.timespec], align 4
  %6 = alloca i64, align 8
  %7 = alloca [2 x %struct.timespec], align 4
  %8 = alloca %struct.attrlist, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %9 = load %struct.timespec*, %struct.timespec** %4, align 8
  %10 = icmp ne %struct.timespec* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = bitcast [2 x %struct.timespec]* %5 to %struct.timespec**
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = call i32 @memcpy(%struct.timespec** %12, %struct.timespec* %13, i32 8)
  br label %19

15:                                               ; preds = %2
  %16 = bitcast [2 x %struct.timespec]* %5 to %struct.timespec**
  %17 = load %struct.timespec*, %struct.timespec** @times_now, align 8
  %18 = call i32 @memcpy(%struct.timespec** %16, %struct.timespec* %17, i32 8)
  br label %19

19:                                               ; preds = %15, %11
  store i64 0, i64* %6, align 8
  %20 = bitcast [2 x %struct.timespec]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %8, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %8, i32 0, i32 1
  %23 = load i32, i32* @ATTR_BIT_MAP_COUNT, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %5, i64 0, i64 0
  %25 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %26 = call i32 @prepare_times_array_and_attrs(%struct.timespec* %24, %struct.timespec* %25, i64* %6)
  %27 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = bitcast [2 x %struct.timespec]* %7 to %struct.timespec**
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @fsetattrlist(i32 %28, %struct.attrlist* %8, %struct.timespec** %29, i64 %30, i32 0)
  ret i32 %31
}

declare dso_local i32 @memcpy(%struct.timespec**, %struct.timespec*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @prepare_times_array_and_attrs(%struct.timespec*, %struct.timespec*, i64*) #1

declare dso_local i32 @fsetattrlist(i32, %struct.attrlist*, %struct.timespec**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
