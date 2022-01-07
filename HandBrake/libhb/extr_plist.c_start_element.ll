; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_start_element.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_start_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8*, i32*, i32, i32, i32*, i64 }
%union.anon = type { i8* }

@TAG_MAP_SZ = common dso_local global i32 0, align 4
@tag_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unrecognized start tag (%s)\00", align 1
@HB_VALUE_TYPE_ARRAY = common dso_local global i64 0, align 8
@HB_VALUE_TYPE_DICT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"No key for dictionary item\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid container type. This shouldn't happen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32**)* @start_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_element(i8* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %union.anon, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %161

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @TAG_MAP_SZ, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i8* %29, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tag_map, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %union.anon* %9 to i32*
  store i32 %44, i32* %45, align 8
  br label %50

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %24

50:                                               ; preds = %38, %24
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @TAG_MAP_SZ, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %161

57:                                               ; preds = %50
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @free(i32* %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = bitcast %union.anon* %9 to i8**
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @queue_push_head(i32 %72, i8* %74)
  store i64 0, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @queue_peek_head(i32 %78)
  store i8* %79, i8** %13, align 8
  %80 = bitcast %union.anon* %9 to i32*
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %117 [
    i32 131, label %82
    i32 132, label %83
    i32 135, label %96
    i32 138, label %103
    i32 133, label %110
    i32 130, label %111
    i32 129, label %112
    i32 136, label %113
    i32 128, label %114
    i32 134, label %115
    i32 137, label %116
  ]

82:                                               ; preds = %69
  br label %117

83:                                               ; preds = %69
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @free(i32* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32* null, i32** %95, align 8
  br label %117

96:                                               ; preds = %69
  %97 = call i8* (...) @hb_dict_init()
  store i8* %97, i8** %12, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @queue_push_head(i32 %100, i8* %101)
  br label %117

103:                                              ; preds = %69
  %104 = call i8* (...) @hb_value_array_init()
  store i8* %104, i8** %12, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @queue_push_head(i32 %107, i8* %108)
  br label %117

110:                                              ; preds = %69
  br label %117

111:                                              ; preds = %69
  br label %117

112:                                              ; preds = %69
  br label %117

113:                                              ; preds = %69
  br label %117

114:                                              ; preds = %69
  br label %117

115:                                              ; preds = %69
  br label %117

116:                                              ; preds = %69
  br label %117

117:                                              ; preds = %69, %116, %115, %114, %113, %112, %111, %110, %103, %96, %93, %82
  %118 = load i8*, i8** %12, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %161

120:                                              ; preds = %117
  %121 = load i8*, i8** %13, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8*, i8** %12, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %161

127:                                              ; preds = %120
  %128 = load i8*, i8** %13, align 8
  %129 = call i64 @hb_value_type(i8* %128)
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* @HB_VALUE_TYPE_ARRAY, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i8*, i8** %13, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @hb_value_array_append(i8* %134, i8* %135)
  br label %160

137:                                              ; preds = %127
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @HB_VALUE_TYPE_DICT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %148 = call i32 @hb_value_free(i8** %12)
  br label %156

149:                                              ; preds = %141
  %150 = load i8*, i8** %13, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = call i32 @hb_dict_set(i8* %150, i32* %153, i8* %154)
  br label %156

156:                                              ; preds = %149, %146
  br label %159

157:                                              ; preds = %137
  %158 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %156
  br label %160

160:                                              ; preds = %159, %133
  br label %161

161:                                              ; preds = %22, %54, %123, %160, %117
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @queue_push_head(i32, i8*) #1

declare dso_local i8* @queue_peek_head(i32) #1

declare dso_local i8* @hb_dict_init(...) #1

declare dso_local i8* @hb_value_array_init(...) #1

declare dso_local i64 @hb_value_type(i8*) #1

declare dso_local i32 @hb_value_array_append(i8*, i8*) #1

declare dso_local i32 @hb_value_free(i8**) #1

declare dso_local i32 @hb_dict_set(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
