; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_framing.c__span_queued_page.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_framing.c__span_queued_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i64 }

@FINFLAG = common dso_local global i32 0, align 4
@FINMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @_span_queued_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_span_queued_page(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  br label %6

6:                                                ; preds = %223, %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FINFLAG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %224

14:                                               ; preds = %6
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %224

20:                                               ; preds = %14
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 27
  %33 = trunc i64 %32 to i32
  %34 = call i8* @ogg_buffer_pretruncate(i64 %28, i32 %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %25, %20
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 14
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 13
  store i64 0, i64* %51, align 8
  br label %224

52:                                               ; preds = %38
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = call i64 @ogg_page_pageno(%struct.TYPE_11__* %5)
  store i64 %57, i64* %3, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @oggbyte_init(i32* %4, i64 %60)
  %62 = call i32 @oggbyte_read1(i32* %4, i32 26)
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %52
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  store i32 1, i32* %78, align 8
  br label %82

79:                                               ; preds = %71
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  store i32 2, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @ogg_buffer_pretruncate(i64 %85, i32 %88)
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 6
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %82
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 12
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %82
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %52
  %104 = call i64 @ogg_page_continued(%struct.TYPE_11__* %5)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %148

106:                                              ; preds = %103
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %106
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = call i32 @_next_lace(i32* %4, %struct.TYPE_10__* %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FINMASK, align 4
  %121 = and i32 %119, %120
  %122 = call i8* @ogg_buffer_pretruncate(i64 %116, i32 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 6
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %111
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 12
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %111
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 8
  store i32 2, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %138, %133
  br label %147

147:                                              ; preds = %146, %106
  br label %188

148:                                              ; preds = %103
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %187

153:                                              ; preds = %148
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @ogg_buffer_pretruncate(i64 %156, i32 %159)
  %161 = ptrtoint i8* %160 to i64
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 6
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %153
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 12
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %168, %153
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %171
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 8
  store i32 2, i32* %185, align 4
  br label %186

186:                                              ; preds = %183, %178, %171
  br label %187

187:                                              ; preds = %186, %148
  br label %188

188:                                              ; preds = %187, %147
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp slt i64 %192, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %188
  %198 = call i32 @ogg_page_granulepos(%struct.TYPE_11__* %5)
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 11
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %202 = call i32 @_next_lace(i32* %4, %struct.TYPE_10__* %201)
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %211 = call i32 @_next_lace(i32* %4, %struct.TYPE_10__* %210)
  br label %212

212:                                              ; preds = %197, %188
  %213 = load i64, i64* %3, align 8
  %214 = add nsw i64 %213, 1
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 4
  store i64 %214, i64* %216, align 8
  %217 = call i32 @ogg_page_eos(%struct.TYPE_11__* %5)
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 4
  %220 = call i32 @ogg_page_bos(%struct.TYPE_11__* %5)
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 9
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %212
  br label %6

224:                                              ; preds = %49, %19, %6
  ret void
}

declare dso_local i8* @ogg_buffer_pretruncate(i64, i32) #1

declare dso_local i64 @ogg_page_pageno(%struct.TYPE_11__*) #1

declare dso_local i32 @oggbyte_init(i32*, i64) #1

declare dso_local i32 @oggbyte_read1(i32*, i32) #1

declare dso_local i64 @ogg_page_continued(%struct.TYPE_11__*) #1

declare dso_local i32 @_next_lace(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ogg_page_granulepos(%struct.TYPE_11__*) #1

declare dso_local i32 @ogg_page_eos(%struct.TYPE_11__*) #1

declare dso_local i32 @ogg_page_bos(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
