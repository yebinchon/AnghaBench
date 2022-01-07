; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_config.c_config_get_bool.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_config.c_config_get_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_get_bool(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call %struct.TYPE_3__* @entry_find(i32* %23, i8* %24, i8* %25)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %5, align 4
  br label %47

31:                                               ; preds = %4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcmp(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %47

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %44, %37, %29
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @entry_find(i32*, i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
