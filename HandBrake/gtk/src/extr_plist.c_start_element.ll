; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_plist.c_start_element.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_plist.c_start_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i64 }
%union.anon = type { i64 }

@TAG_MAP_SZ = common dso_local global i64 0, align 8
@tag_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unrecognized start tag (%s)\00", align 1
@GHB_ARRAY = common dso_local global i64 0, align 8
@GHB_DICT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"No key for dictionary item\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid container type. This shouldn't happen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32**, i32**, i32*, i32**)* @start_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_element(i32* %0, i32* %1, i32** %2, i32** %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca %union.anon, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32** %5, i32*** %12, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %13, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %150

26:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* @TAG_MAP_SZ, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @strcmp(i32* %32, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = bitcast %union.anon* %14 to i64*
  store i64 %45, i64* %46, align 8
  br label %51

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %15, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %15, align 8
  br label %27

51:                                               ; preds = %40, %27
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @TAG_MAP_SZ, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %56)
  br label %150

58:                                               ; preds = %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = bitcast %union.anon* %14 to i32**
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @g_queue_push_head(i32 %61, i32* %63)
  store i64 0, i64* %16, align 8
  store i32* null, i32** %17, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @g_queue_peek_head(i32 %67)
  store i32* %68, i32** %18, align 8
  %69 = bitcast %union.anon* %14 to i64*
  %70 = load i64, i64* %69, align 8
  switch i64 %70, label %106 [
    i64 131, label %71
    i64 132, label %72
    i64 135, label %85
    i64 138, label %92
    i64 133, label %99
    i64 130, label %100
    i64 129, label %101
    i64 136, label %102
    i64 128, label %103
    i64 134, label %104
    i64 137, label %105
  ]

71:                                               ; preds = %58
  br label %106

72:                                               ; preds = %58
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @g_free(i32* %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %106

85:                                               ; preds = %58
  %86 = call i32* (...) @ghb_dict_new()
  store i32* %86, i32** %17, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @g_queue_push_head(i32 %89, i32* %90)
  br label %106

92:                                               ; preds = %58
  %93 = call i32* (...) @ghb_array_new()
  store i32* %93, i32** %17, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = call i32 @g_queue_push_head(i32 %96, i32* %97)
  br label %106

99:                                               ; preds = %58
  br label %106

100:                                              ; preds = %58
  br label %106

101:                                              ; preds = %58
  br label %106

102:                                              ; preds = %58
  br label %106

103:                                              ; preds = %58
  br label %106

104:                                              ; preds = %58
  br label %106

105:                                              ; preds = %58
  br label %106

106:                                              ; preds = %58, %105, %104, %103, %102, %101, %100, %99, %92, %85, %82, %71
  %107 = load i32*, i32** %17, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %150

109:                                              ; preds = %106
  %110 = load i32*, i32** %18, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32*, i32** %17, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32* %113, i32** %115, align 8
  br label %150

116:                                              ; preds = %109
  %117 = load i32*, i32** %18, align 8
  %118 = call i64 @ghb_value_type(i32* %117)
  store i64 %118, i64* %16, align 8
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* @GHB_ARRAY, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32*, i32** %18, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @ghb_array_append(i32* %123, i32* %124)
  br label %149

126:                                              ; preds = %116
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* @GHB_DICT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %137 = call i32 @ghb_value_free(i32** %17)
  br label %145

138:                                              ; preds = %130
  %139 = load i32*, i32** %18, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = call i32 @ghb_dict_set(i32* %139, i32* %142, i32* %143)
  br label %145

145:                                              ; preds = %138, %135
  br label %148

146:                                              ; preds = %126
  %147 = call i32 @g_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %145
  br label %149

149:                                              ; preds = %148, %122
  br label %150

150:                                              ; preds = %25, %55, %112, %149, %106
  ret void
}

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @g_warning(i8*, ...) #1

declare dso_local i32 @g_queue_push_head(i32, i32*) #1

declare dso_local i32* @g_queue_peek_head(i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32* @ghb_dict_new(...) #1

declare dso_local i32* @ghb_array_new(...) #1

declare dso_local i64 @ghb_value_type(i32*) #1

declare dso_local i32 @ghb_array_append(i32*, i32*) #1

declare dso_local i32 @ghb_value_free(i32**) #1

declare dso_local i32 @ghb_dict_set(i32*, i32*, i32*) #1

declare dso_local i32 @g_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
