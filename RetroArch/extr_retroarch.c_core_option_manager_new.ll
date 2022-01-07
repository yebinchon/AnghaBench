; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_core_option_manager_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_core_option_manager_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.core_option*, i32, i8* }
%struct.core_option = type { i32 }
%struct.retro_core_option_definition = type { %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*, i8*, %struct.retro_core_option_definition*)* @core_option_manager_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @core_option_manager_new(i8* %0, i8* %1, %struct.retro_core_option_definition* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.retro_core_option_definition*, align 8
  %8 = alloca %struct.retro_core_option_definition*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.retro_core_option_definition* %2, %struct.retro_core_option_definition** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = call i64 @calloc(i64 1, i32 32)
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %147

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @string_is_empty(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @config_file_new_from_path_to_string(i8* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = icmp ne i8* %23, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = call i8* (...) @config_file_new_alloc()
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = icmp ne i8* %28, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %138

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
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
  %49 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %7, align 8
  store %struct.retro_core_option_definition* %49, %struct.retro_core_option_definition** %8, align 8
  br label %50

50:                                               ; preds = %73, %48
  %51 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %52 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %57 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %62 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %60, %55, %50
  %69 = phi i1 [ false, %55 ], [ false, %50 ], [ %67, %60 ]
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %70
  %74 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %75 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %74, i32 1
  store %struct.retro_core_option_definition* %75, %struct.retro_core_option_definition** %8, align 8
  br label %50

76:                                               ; preds = %68
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %138

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @calloc(i64 %81, i32 4)
  %83 = inttoptr i64 %82 to %struct.core_option*
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store %struct.core_option* %83, %struct.core_option** %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.core_option*, %struct.core_option** %87, align 8
  %89 = icmp ne %struct.core_option* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  br label %138

91:                                               ; preds = %80
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  store i64 0, i64* %9, align 8
  %95 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %7, align 8
  store %struct.retro_core_option_definition* %95, %struct.retro_core_option_definition** %8, align 8
  br label %96

96:                                               ; preds = %125, %91
  %97 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %98 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %103 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %108 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %106, %101, %96
  %115 = phi i1 [ false, %101 ], [ false, %96 ], [ %113, %106 ]
  br i1 %115, label %116, label %130

116:                                              ; preds = %114
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 @core_option_manager_parse_option(%struct.TYPE_7__* %117, i64 %118, %struct.retro_core_option_definition* %119, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  br label %138

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %9, align 8
  %128 = load %struct.retro_core_option_definition*, %struct.retro_core_option_definition** %8, align 8
  %129 = getelementptr inbounds %struct.retro_core_option_definition, %struct.retro_core_option_definition* %128, i32 1
  store %struct.retro_core_option_definition* %129, %struct.retro_core_option_definition** %8, align 8
  br label %96

130:                                              ; preds = %114
  %131 = load i32*, i32** %11, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @config_file_free(i32* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %137, %struct.TYPE_7__** %4, align 8
  br label %147

138:                                              ; preds = %123, %90, %79, %32
  %139 = load i32*, i32** %11, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32*, i32** %11, align 8
  %143 = call i32 @config_file_free(i32* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %146 = call i32 @core_option_manager_free(%struct.TYPE_7__* %145)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %147

147:                                              ; preds = %144, %136, %16
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %148
}

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @config_file_new_from_path_to_string(i8*) #1

declare dso_local i8* @config_file_new_alloc(...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @core_option_manager_parse_option(%struct.TYPE_7__*, i64, %struct.retro_core_option_definition*, i32*) #1

declare dso_local i32 @config_file_free(i32*) #1

declare dso_local i32 @core_option_manager_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
