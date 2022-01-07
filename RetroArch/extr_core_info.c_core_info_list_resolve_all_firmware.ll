; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_list_resolve_all_firmware.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_core_info.c_core_info_list_resolve_all_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, i64 }

@.str = private unnamed_addr constant [15 x i8] c"firmware_count\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"firmware%u_path\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"firmware%u_desc\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"firmware%u_opt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @core_info_list_resolve_all_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_info_list_resolve_all_firmware(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %132, %1
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %135

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = bitcast i32* %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %7, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @config_get_uint(i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %20
  br label %132

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @calloc(i32 %39, i32 24)
  %41 = inttoptr i64 %40 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %132

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %128, %45
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %131

53:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %54, align 16
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %55, align 16
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %56, align 16
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @snprintf(i8* %57, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @snprintf(i8* %60, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @snprintf(i8* %63, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %68 = call i64 @config_get_string(i32* %66, i8* %67, i8** %13)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %53
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @string_is_empty(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %13, align 8
  %76 = call i8* @strdup(i8* %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store i8* %76, i8** %83, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @free(i8* %84)
  store i8* null, i8** %13, align 8
  br label %86

86:                                               ; preds = %74, %70, %53
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %89 = call i64 @config_get_string(i32* %87, i8* %88, i8** %13)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @string_is_empty(i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %13, align 8
  %97 = call i8* @strdup(i8* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i8* %97, i8** %104, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @free(i8* %105)
  store i8* null, i8** %13, align 8
  br label %107

107:                                              ; preds = %95, %91, %86
  %108 = load i8*, i8** %13, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @free(i8* %111)
  br label %113

113:                                              ; preds = %110, %107
  store i8* null, i8** %13, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %116 = call i64 @config_get_bool(i32* %114, i8* %115, i32* %12)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %119, i32* %126, align 8
  br label %127

127:                                              ; preds = %118, %113
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %4, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %49

131:                                              ; preds = %49
  br label %132

132:                                              ; preds = %131, %44, %37
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %3, align 8
  br label %14

135:                                              ; preds = %14
  ret void
}

declare dso_local i32 @config_get_uint(i32*, i8*, i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @config_get_string(i32*, i8*, i8**) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @config_get_bool(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
