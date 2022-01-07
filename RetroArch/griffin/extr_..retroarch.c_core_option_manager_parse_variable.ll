; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_core_option_manager_parse_variable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_core_option_manager_parse_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }
%struct.retro_variable = type { i8*, i8* }
%struct.core_option = type { i32, i64, %struct.TYPE_8__*, i8*, i64, i32, i8* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, %struct.retro_variable*, i32*)* @core_option_manager_parse_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_option_manager_parse_variable(%struct.TYPE_7__* %0, i64 %1, %struct.retro_variable* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.retro_variable*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.core_option*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.retro_variable* %2, %struct.retro_variable** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = bitcast i32* %20 to %struct.core_option*
  store %struct.core_option* %21, %struct.core_option** %14, align 8
  %22 = load %struct.core_option*, %struct.core_option** %14, align 8
  %23 = getelementptr inbounds %struct.core_option, %struct.core_option* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %25 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @string_is_empty(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %4
  %30 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %31 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strdup(i8* %32)
  %34 = load %struct.core_option*, %struct.core_option** %14, align 8
  %35 = getelementptr inbounds %struct.core_option, %struct.core_option* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %4
  %37 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %38 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @string_is_empty(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.retro_variable*, %struct.retro_variable** %8, align 8
  %44 = getelementptr inbounds %struct.retro_variable, %struct.retro_variable* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %11, align 8
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @string_is_empty(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %11, align 8
  %53 = call i8* @strstr(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %148

58:                                               ; preds = %54
  %59 = load i8*, i8** %12, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @string_is_empty(i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %11, align 8
  %65 = call i8* @strdup(i8* %64)
  %66 = load %struct.core_option*, %struct.core_option** %14, align 8
  %67 = getelementptr inbounds %struct.core_option, %struct.core_option* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call %struct.TYPE_8__* @string_split(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.core_option*, %struct.core_option** %14, align 8
  %74 = getelementptr inbounds %struct.core_option, %struct.core_option* %73, i32 0, i32 2
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  %75 = load %struct.core_option*, %struct.core_option** %14, align 8
  %76 = getelementptr inbounds %struct.core_option, %struct.core_option* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %148

80:                                               ; preds = %68
  %81 = load %struct.core_option*, %struct.core_option** %14, align 8
  %82 = getelementptr inbounds %struct.core_option, %struct.core_option* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = call i32 @string_list_clone(%struct.TYPE_8__* %83)
  %85 = load %struct.core_option*, %struct.core_option** %14, align 8
  %86 = getelementptr inbounds %struct.core_option, %struct.core_option* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.core_option*, %struct.core_option** %14, align 8
  %88 = getelementptr inbounds %struct.core_option, %struct.core_option* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  br label %148

92:                                               ; preds = %80
  %93 = load %struct.core_option*, %struct.core_option** %14, align 8
  %94 = getelementptr inbounds %struct.core_option, %struct.core_option* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load %struct.core_option*, %struct.core_option** %14, align 8
  %96 = getelementptr inbounds %struct.core_option, %struct.core_option* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32*, i32** %9, align 8
  br label %105

101:                                              ; preds = %92
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  br label %105

105:                                              ; preds = %101, %99
  %106 = phi i32* [ %100, %99 ], [ %104, %101 ]
  %107 = load %struct.core_option*, %struct.core_option** %14, align 8
  %108 = getelementptr inbounds %struct.core_option, %struct.core_option* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @config_get_string(i32* %106, i8* %109, i8** %13)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %105
  store i64 0, i64* %15, align 8
  br label %113

113:                                              ; preds = %139, %112
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.core_option*, %struct.core_option** %14, align 8
  %116 = getelementptr inbounds %struct.core_option, %struct.core_option* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %114, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %113
  %122 = load %struct.core_option*, %struct.core_option** %14, align 8
  %123 = getelementptr inbounds %struct.core_option, %struct.core_option* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %13, align 8
  %132 = call i64 @string_is_equal(i32 %130, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %121
  %135 = load i64, i64* %15, align 8
  %136 = load %struct.core_option*, %struct.core_option** %14, align 8
  %137 = getelementptr inbounds %struct.core_option, %struct.core_option* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  br label %142

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %15, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %15, align 8
  br label %113

142:                                              ; preds = %134, %113
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %105
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @free(i8* %146)
  store i32 1, i32* %5, align 4
  br label %151

148:                                              ; preds = %91, %79, %57
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @free(i8* %149)
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @string_split(i8*, i8*) #1

declare dso_local i32 @string_list_clone(%struct.TYPE_8__*) #1

declare dso_local i64 @config_get_string(i32*, i8*, i8**) #1

declare dso_local i64 @string_is_equal(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
