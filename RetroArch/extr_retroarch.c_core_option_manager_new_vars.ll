; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_core_option_manager_new_vars.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_core_option_manager_new_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.core_option*, i32, i8* }
%struct.core_option = type { i32 }
%struct.retro_variable = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, i8*, %struct.retro_variable*)* @core_option_manager_new_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @core_option_manager_new_vars(i8* %0, i8* %1, %struct.retro_variable* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.retro_variable*, align 8
  %8 = alloca %struct.retro_variable*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.retro_variable* %2, %struct.retro_variable** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = call i64 @calloc(i64 1, i32 32)
  %13 = inttoptr i64 %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %131

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @string_is_empty(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @config_file_new_from_path_to_string(i8* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = icmp ne i8* %23, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = call i8* (...) @config_file_new_alloc()
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = icmp ne i8* %28, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %122

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlcpy(i32 %38, i8* %39, i32 4)
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @string_is_empty(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @config_file_new_from_path_to_string(i8* %45)
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %11, align 8
  br label %48

48:                                               ; preds = %44, %35
  %49 = load %struct.retro_variable*, %struct.retro_variable** %7, align 8
  store %struct.retro_variable* %49, %struct.retro_variable** %8, align 8
  br label %50

50:                                               ; preds = %65, %48
  %51 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %52 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %57 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ false, %50 ], [ %59, %55 ]
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %67 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %66, i32 1
  store %struct.retro_variable* %67, %struct.retro_variable** %8, align 8
  br label %50

68:                                               ; preds = %60
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %122

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @calloc(i64 %73, i32 4)
  %75 = inttoptr i64 %74 to %struct.core_option*
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store %struct.core_option* %75, %struct.core_option** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load %struct.core_option*, %struct.core_option** %79, align 8
  %81 = icmp ne %struct.core_option* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  br label %122

83:                                               ; preds = %72
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  store i64 0, i64* %9, align 8
  %87 = load %struct.retro_variable*, %struct.retro_variable** %7, align 8
  store %struct.retro_variable* %87, %struct.retro_variable** %8, align 8
  br label %88

88:                                               ; preds = %109, %83
  %89 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %90 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %95 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ false, %88 ], [ %97, %93 ]
  br i1 %99, label %100, label %114

100:                                              ; preds = %98
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @core_option_manager_parse_variable(%struct.TYPE_5__* %101, i64 %102, %struct.retro_variable* %103, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %122

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  %112 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %113 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %112, i32 1
  store %struct.retro_variable* %113, %struct.retro_variable** %8, align 8
  br label %88

114:                                              ; preds = %98
  %115 = load i32*, i32** %11, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @config_file_free(i32* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %4, align 8
  br label %131

122:                                              ; preds = %107, %82, %71, %32
  %123 = load i32*, i32** %11, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @config_file_free(i32* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %130 = call i32 @core_option_manager_free(%struct.TYPE_5__* %129)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %131

131:                                              ; preds = %128, %120, %16
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %132
}

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @config_file_new_from_path_to_string(i8*) #1

declare dso_local i8* @config_file_new_alloc(...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @core_option_manager_parse_variable(%struct.TYPE_5__*, i64, %struct.retro_variable*, i32*) #1

declare dso_local i32 @config_file_free(i32*) #1

declare dso_local i32 @core_option_manager_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
