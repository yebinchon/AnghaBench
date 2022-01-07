; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_end_element.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_end_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i32*, i32*, i32 }
%union.anon = type { i8* }

@TAG_MAP_SZ = common dso_local global i32 0, align 4
@tag_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unrecognized start tag (%s)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"start tag != end tag: (%s %d) %d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unhandled plist type %d\00", align 1
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"No key for dictionary item\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Invalid container type. This shouldn't happen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @end_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_element(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %190

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @TAG_MAP_SZ, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i8* %31, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %51

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %26

51:                                               ; preds = %40, %26
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @TAG_MAP_SZ, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %56)
  br label %190

58:                                               ; preds = %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @queue_pop_head(i32 %61)
  %63 = bitcast %union.anon* %8 to i8**
  store i8* %62, i8** %63, align 8
  %64 = bitcast %union.anon* %8 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %58
  store i32* null, i32** %10, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32* @queue_peek_head(i32 %76)
  store i32* %77, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %13, align 8
  br label %87

86:                                               ; preds = %73
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i32, i32* %7, align 4
  switch i32 %88, label %132 [
    i32 131, label %89
    i32 132, label %90
    i32 135, label %105
    i32 136, label %110
    i32 133, label %115
    i32 130, label %120
    i32 129, label %125
    i32 128, label %128
    i32 134, label %130
  ]

89:                                               ; preds = %87
  br label %135

90:                                               ; preds = %87
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @free(i32* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i8*, i8** %13, align 8
  %102 = call i32* @strdup(i8* %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  br label %190

105:                                              ; preds = %87
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @queue_pop_head(i32 %108)
  br label %135

110:                                              ; preds = %87
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @queue_pop_head(i32 %113)
  br label %135

115:                                              ; preds = %87
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @strtoll(i8* %116, i32* null, i32 0)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32* @hb_value_int(i32 %118)
  store i32* %119, i32** %10, align 8
  br label %135

120:                                              ; preds = %87
  %121 = load i8*, i8** %13, align 8
  %122 = call double @strtod(i8* %121, i32* null)
  store double %122, double* %15, align 8
  %123 = load double, double* %15, align 8
  %124 = call i32* @hb_value_double(double %123)
  store i32* %124, i32** %10, align 8
  br label %135

125:                                              ; preds = %87
  %126 = load i8*, i8** %13, align 8
  %127 = call i32* @hb_value_string(i8* %126)
  store i32* %127, i32** %10, align 8
  br label %135

128:                                              ; preds = %87
  %129 = call i32* @hb_value_bool(i32 1)
  store i32* %129, i32** %10, align 8
  br label %135

130:                                              ; preds = %87
  %131 = call i32* @hb_value_bool(i32 0)
  store i32* %131, i32** %10, align 8
  br label %135

132:                                              ; preds = %87
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %132, %130, %128, %125, %120, %115, %110, %105, %89
  %136 = load i32*, i32** %10, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %181

138:                                              ; preds = %135
  %139 = load i32*, i32** %11, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32*, i32** %10, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  store i32* %142, i32** %144, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %190

147:                                              ; preds = %138
  %148 = load i32*, i32** %11, align 8
  %149 = call i64 @hb_value_type(i32* %148)
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32*, i32** %11, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @hb_value_array_append(i32* %154, i32* %155)
  br label %180

157:                                              ; preds = %147
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %168 = call i32 @hb_value_free(i32** %10)
  br label %176

169:                                              ; preds = %161
  %170 = load i32*, i32** %11, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = call i32 @hb_dict_set(i32* %170, i32* %173, i32* %174)
  br label %176

176:                                              ; preds = %169, %166
  br label %179

177:                                              ; preds = %157
  %178 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %176
  br label %180

180:                                              ; preds = %179, %153
  br label %181

181:                                              ; preds = %180, %135
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @queue_is_empty(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %24, %55, %100, %141, %187, %181
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i8* @queue_pop_head(i32) #1

declare dso_local i32* @queue_peek_head(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local i32* @hb_value_int(i32) #1

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32* @hb_value_double(double) #1

declare dso_local i32* @hb_value_string(i8*) #1

declare dso_local i32* @hb_value_bool(i32) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_dict_set(i32*, i32*, i32*) #1

declare dso_local i64 @queue_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
