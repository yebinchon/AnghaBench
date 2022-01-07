; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_plist.c_end_element.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_plist.c_end_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32*, i32*, i32, i32 }
%union.anon = type { i64 }

@TAG_MAP_SZ = common dso_local global i64 0, align 8
@tag_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unrecognized start tag (%s)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"start tag != end tag: (%s %d) %d\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Unhandled plist type %d\00", align 1
@GHB_ARRAY = common dso_local global i64 0, align 8
@GHB_DICT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"No key for dictionary item\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Invalid container type. This shouldn't happen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32**)* @end_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_element(i32* %0, i32* %1, i64 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32** %3, i32*** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %9, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %190

25:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @TAG_MAP_SZ, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i32* %31, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  br label %49

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  br label %26

49:                                               ; preds = %39, %26
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @TAG_MAP_SZ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %54)
  br label %190

56:                                               ; preds = %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @g_queue_pop_head(i32 %59)
  %61 = bitcast %union.anon* %11 to i64*
  store i64 %60, i64* %61, align 8
  %62 = bitcast %union.anon* %11 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %67, i64 %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %56
  store i32* null, i32** %13, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32* @g_queue_peek_head(i32 %74)
  store i32* %75, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %76 = load i64, i64* %10, align 8
  switch i64 %76, label %130 [
    i64 131, label %77
    i64 132, label %78
    i64 135, label %95
    i64 136, label %100
    i64 133, label %105
    i64 130, label %112
    i64 129, label %119
    i64 128, label %124
    i64 134, label %127
  ]

77:                                               ; preds = %71
  br label %133

78:                                               ; preds = %71
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @g_free(i32* %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32* @g_strdup(i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  br label %190

95:                                               ; preds = %71
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @g_queue_pop_head(i32 %98)
  br label %133

100:                                              ; preds = %71
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @g_queue_pop_head(i32 %103)
  br label %133

105:                                              ; preds = %71
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @g_strtod(i32 %108, i32* null)
  store i8* %109, i8** %16, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = call i32* @ghb_int_value_new(i8* %110)
  store i32* %111, i32** %13, align 8
  br label %133

112:                                              ; preds = %71
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @g_strtod(i32 %115, i32* null)
  store i8* %116, i8** %17, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = call i32* @ghb_double_value_new(i8* %117)
  store i32* %118, i32** %13, align 8
  br label %133

119:                                              ; preds = %71
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32* @ghb_string_value_new(i32 %122)
  store i32* %123, i32** %13, align 8
  br label %133

124:                                              ; preds = %71
  %125 = load i8*, i8** @TRUE, align 8
  %126 = call i32* @ghb_bool_value_new(i8* %125)
  store i32* %126, i32** %13, align 8
  br label %133

127:                                              ; preds = %71
  %128 = load i8*, i8** @FALSE, align 8
  %129 = call i32* @ghb_bool_value_new(i8* %128)
  store i32* %129, i32** %13, align 8
  br label %133

130:                                              ; preds = %71
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @g_message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %131)
  br label %133

133:                                              ; preds = %130, %127, %124, %119, %112, %105, %100, %95, %77
  %134 = load i32*, i32** %13, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %180

136:                                              ; preds = %133
  %137 = load i32*, i32** %14, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32*, i32** %13, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  store i32* %140, i32** %142, align 8
  %143 = load i8*, i8** @TRUE, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  br label %190

146:                                              ; preds = %136
  %147 = load i32*, i32** %14, align 8
  %148 = call i64 @ghb_value_type(i32* %147)
  store i64 %148, i64* %15, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* @GHB_ARRAY, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @ghb_array_append(i32* %153, i32* %154)
  br label %179

156:                                              ; preds = %146
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* @GHB_DICT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %156
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = call i32 (i8*, ...) @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %167 = call i32 @ghb_value_free(i32** %13)
  br label %175

168:                                              ; preds = %160
  %169 = load i32*, i32** %14, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32*, i32** %13, align 8
  %174 = call i32 @ghb_dict_set(i32* %169, i32* %172, i32* %173)
  br label %175

175:                                              ; preds = %168, %165
  br label %178

176:                                              ; preds = %156
  %177 = call i32 @g_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %175
  br label %179

179:                                              ; preds = %178, %152
  br label %180

180:                                              ; preds = %179, %133
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @g_queue_is_empty(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i8*, i8** @TRUE, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %24, %53, %88, %139, %186, %180
  ret void
}

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @g_warning(i8*, ...) #1

declare dso_local i64 @g_queue_pop_head(i32) #1

declare dso_local i32* @g_queue_peek_head(i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32* @g_strdup(i32) #1

declare dso_local i8* @g_strtod(i32, i32*) #1

declare dso_local i32* @ghb_int_value_new(i8*) #1

declare dso_local i32* @ghb_double_value_new(i8*) #1

declare dso_local i32* @ghb_string_value_new(i32) #1

declare dso_local i32* @ghb_bool_value_new(i8*) #1

declare dso_local i32 @g_message(i8*, i64) #1

declare dso_local i64 @ghb_value_type(i32*) #1

declare dso_local i32 @ghb_array_append(i32*, i32*) #1

declare dso_local i32 @ghb_value_free(i32**) #1

declare dso_local i32 @ghb_dict_set(i32*, i32*, i32*) #1

declare dso_local i32 @g_error(i8*) #1

declare dso_local i64 @g_queue_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
