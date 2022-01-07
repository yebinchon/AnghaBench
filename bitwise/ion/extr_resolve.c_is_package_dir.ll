; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_is_package_dir.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_is_package_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_package_dir(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @path_copy(i8* %14, i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @path_join(i8* %14, i8* %17)
  %19 = call i32 @dir_list(%struct.TYPE_5__* %8, i8* %14)
  br label %20

20:                                               ; preds = %39, %2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @path_ext(i8* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @dir_list_free(%struct.TYPE_5__* %8)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %42

38:                                               ; preds = %32, %24
  br label %39

39:                                               ; preds = %38
  %40 = call i32 @dir_list_next(%struct.TYPE_5__* %8)
  br label %20

41:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @path_copy(i8*, i8*) #2

declare dso_local i32 @path_join(i8*, i8*) #2

declare dso_local i32 @dir_list(%struct.TYPE_5__*, i8*) #2

declare dso_local i8* @path_ext(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @dir_list_free(%struct.TYPE_5__*) #2

declare dso_local i32 @dir_list_next(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
