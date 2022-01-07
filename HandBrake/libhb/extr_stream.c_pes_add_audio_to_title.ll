; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_pes_add_audio_to_title.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_pes_add_audio_to_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"stream id 0x%x (type 0x%x substream 0x%x) audio 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32, %struct.TYPE_21__*, i32)* @pes_add_audio_to_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pes_add_audio_to_title(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_21__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i64 %22
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %9, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %25 = call i32 @get_id(%struct.TYPE_23__* %24)
  store i32 %25, i32* %10, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hb_list_count(i32 %28)
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %47, %4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.TYPE_24__* @hb_list_item(i32 %37, i32 %38)
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %192

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %30

50:                                               ; preds = %30
  %51 = call %struct.TYPE_24__* @calloc(i32 36, i32 1)
  store %struct.TYPE_24__* %51, %struct.TYPE_24__** %14, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 6
  store i32 %57, i32* %61, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 5
  store i32 %64, i32* %68, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 4
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  store i32 90000, i32* %99, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @lang_for_code(i32 %103)
  %105 = call i32 @set_audio_description(%struct.TYPE_24__* %100, i32 %104)
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @hb_log(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %111, i32 %114, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %186

126:                                              ; preds = %50
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %13, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %176, %134
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %179

141:                                              ; preds = %137
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call %struct.TYPE_24__* @hb_list_item(i32 %144, i32 %145)
  store %struct.TYPE_24__* %146, %struct.TYPE_24__** %12, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 65535
  store i32 %150, i32* %15, align 4
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 16
  store i32 %154, i32* %16, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %141
  br label %179

161:                                              ; preds = %141
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %16, align 4
  %172 = icmp sle i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %179

174:                                              ; preds = %167, %161
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %137

179:                                              ; preds = %173, %160, %137
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %185 = call i32 @hb_list_insert(i32 %182, i32 %183, %struct.TYPE_24__* %184)
  br label %192

186:                                              ; preds = %50
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %191 = call i32 @hb_list_add(i32 %189, %struct.TYPE_24__* %190)
  br label %192

192:                                              ; preds = %45, %186, %179
  ret void
}

declare dso_local i32 @get_id(%struct.TYPE_23__*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_24__* @hb_list_item(i32, i32) #1

declare dso_local %struct.TYPE_24__* @calloc(i32, i32) #1

declare dso_local i32 @set_audio_description(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @lang_for_code(i32) #1

declare dso_local i32 @hb_log(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hb_list_insert(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
