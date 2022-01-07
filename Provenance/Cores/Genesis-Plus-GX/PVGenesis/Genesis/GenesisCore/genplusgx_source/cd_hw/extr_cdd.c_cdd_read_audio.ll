; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdd.c_cdd_read_audio.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdd.c_cdd_read_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { i32* }

@cdd = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@blip = common dso_local global i32* null, align 8
@scd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@cdc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdd_read_audio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** @blip, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @blip_clocks_needed(i32 %19, i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @scd, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 27
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %147, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 3, i32 0), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 1), align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %147

35:                                               ; preds = %28
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 2), align 8
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @scd, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 26
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 4
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cdc, i32 0, i32 0), align 8
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cdc, i32 0, i32 0), align 8
  %44 = load i32, i32* %2, align 4
  %45 = mul i32 %44, 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 3, i32 0), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 1), align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @fread(i32* %43, i32 1, i32 %45, i64 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %136, %35
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %139

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 2044
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 2044
  br label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 3
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i32 [ %62, %60 ], [ %65, %63 ]
  store i32 %67, i32* %6, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 256
  %75 = add nsw i32 %70, %74
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sdiv i32 %77, 1024
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32* %82, i32** %10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load i32*, i32** @blip, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @blip_add_delta_fast(i32 %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 256
  %99 = add nsw i32 %94, %98
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sdiv i32 %101, 1024
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %7, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %10, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load i32*, i32** @blip, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @blip_add_delta_fast(i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %66
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %135

122:                                              ; preds = %66
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %8, align 4
  br label %134

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %139

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133, %126
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %52

139:                                              ; preds = %132, %52
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 2), align 8
  %141 = load i32, i32* %3, align 4
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 0), align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 0), align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %144, i32* %146, align 4
  br label %172

147:                                              ; preds = %28, %1
  %148 = load i32, i32* %3, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32*, i32** @blip, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %3, align 4
  %155 = sub nsw i32 0, %154
  %156 = call i32 @blip_add_delta_fast(i32 %153, i32 0, i32 %155)
  br label %157

157:                                              ; preds = %150, %147
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i32*, i32** @blip, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %4, align 4
  %165 = sub nsw i32 0, %164
  %166 = call i32 @blip_add_delta_fast(i32 %163, i32 0, i32 %165)
  br label %167

167:                                              ; preds = %160, %157
  %168 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 0), align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  store i32 0, i32* %169, align 4
  %170 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdd, i32 0, i32 0), align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %139
  %173 = load i32*, i32** @blip, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %2, align 4
  %177 = call i32 @blip_end_frame(i32 %175, i32 %176)
  %178 = load i32*, i32** @blip, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %2, align 4
  %182 = call i32 @blip_end_frame(i32 %180, i32 %181)
  ret void
}

declare dso_local i32 @blip_clocks_needed(i32, i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i64) #1

declare dso_local i32 @blip_add_delta_fast(i32, i32, i32) #1

declare dso_local i32 @blip_end_frame(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
