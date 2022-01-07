; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_lang.c_lang_for_code.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_lang.c_lang_for_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@lang_any = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@languages = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @lang_for_code(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 1
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = ashr i32 %6, 8
  %8 = and i32 %7, 255
  %9 = call signext i8 @tolower(i32 %8)
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 %9, i8* %10, align 1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 255
  %13 = call signext i8 @tolower(i32 %12)
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 %13, i8* %14, align 1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_any, i32 0, i32 1), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_any, i32 0, i32 1), align 8
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %20 = call i32 @strncmp(i64 %18, i8* %19, i32 2)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17, %1
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_any, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_any, i32 0, i32 0), align 8
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %28 = call i32 @strncmp(i64 %26, i8* %27, i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %17
  store %struct.TYPE_4__* @lang_any, %struct.TYPE_4__** %2, align 8
  br label %72

31:                                               ; preds = %25, %22
  %32 = load i64, i64* @languages, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %5, align 8
  br label %34

34:                                               ; preds = %66, %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %49 = call i32 @strncmp(i64 %47, i8* %48, i32 2)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44, %39
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %61 = call i32 @strncmp(i64 %59, i8* %60, i32 2)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56, %44
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %2, align 8
  br label %72

65:                                               ; preds = %56, %51
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 1
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %5, align 8
  br label %34

69:                                               ; preds = %34
  %70 = load i64, i64* @languages, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %2, align 8
  br label %72

72:                                               ; preds = %69, %63, %30
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %73
}

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i32 @strncmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
