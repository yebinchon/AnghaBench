; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_list_update_missing_firmware_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_list_update_missing_firmware_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Firmware missing: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32*)* @core_info_list_update_missing_firmware_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_info_list_update_missing_firmware_internal(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 1
  store i64 %16, i64* %13, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %4
  store i32 0, i32* %5, align 4
  br label %114

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.TYPE_5__* @core_info_find_internal(i32* %24, i8* %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %11, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %114

30:                                               ; preds = %23
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @malloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %114

37:                                               ; preds = %30
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %108, %37
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %111

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @string_is_empty(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %108

57:                                               ; preds = %46
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @fill_pathname_join(i8* %58, i8* %59, i32 %66, i64 %67)
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @path_is_valid(i8* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %73, i32* %79, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %57
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %88
  %98 = load i32*, i32** %9, align 8
  store i32 1, i32* %98, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %97, %88, %57
  br label %108

108:                                              ; preds = %107, %56
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %10, align 8
  br label %40

111:                                              ; preds = %40
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @free(i8* %112)
  store i32 1, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %36, %29, %22
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_5__* @core_info_find_internal(i32*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @string_is_empty(i32) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i32, i64) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
