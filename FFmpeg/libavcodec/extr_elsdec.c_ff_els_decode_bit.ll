; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elsdec.c_ff_els_decode_bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elsdec.c_ff_els_decode_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i64 }

@els_exp_tab = common dso_local global i32* null, align 8
@ELS_JOTS_PER_BYTE = common dso_local global i32 0, align 4
@Ladder = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_els_decode_bit(%struct.TYPE_5__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i32*, i32** @els_exp_tab, align 8
  %11 = load i32, i32* @ELS_JOTS_PER_BYTE, align 4
  %12 = mul nsw i32 %11, 3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %215

20:                                               ; preds = %2
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Ladder, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %24, %30
  %32 = getelementptr inbounds i32, i32* %21, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %20
  %49 = load i64*, i64** %5, align 8
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %50, 1
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %215

53:                                               ; preds = %20
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %116

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Ladder, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %83, %61
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %75, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %72

88:                                               ; preds = %72
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ule i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = call i32 @els_import_byte(%struct.TYPE_5__* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %215

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %88
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %6, align 4
  %105 = load i64*, i64** %5, align 8
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, 1
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %7, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Ladder, align 8
  %110 = load i64*, i64** %5, align 8
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %5, align 8
  store i64 %114, i64* %115, align 8
  br label %196

116:                                              ; preds = %53
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Ladder, align 8
  %128 = load i64*, i64** %5, align 8
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ule i64 %139, 0
  br i1 %140, label %141, label %182

141:                                              ; preds = %116
  %142 = load i32, i32* %6, align 4
  %143 = shl i32 %142, 8
  store i32 %143, i32* %6, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = call i32 @els_import_byte(%struct.TYPE_5__* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %3, align 4
  br label %215

150:                                              ; preds = %141
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ule i64 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %150
  %156 = load i32, i32* %6, align 4
  %157 = shl i32 %156, 8
  store i32 %157, i32* %6, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = call i32 @els_import_byte(%struct.TYPE_5__* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %215

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %175, %164
  %166 = load i32*, i32** %9, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 %169, 1
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %165
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %178, -1
  store i64 %179, i64* %177, align 8
  br label %165

180:                                              ; preds = %165
  br label %181

181:                                              ; preds = %180, %150
  br label %182

182:                                              ; preds = %181, %116
  %183 = load i64*, i64** %5, align 8
  %184 = load i64, i64* %183, align 8
  %185 = and i64 %184, 1
  %186 = icmp ne i64 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %7, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Ladder, align 8
  %190 = load i64*, i64** %5, align 8
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64*, i64** %5, align 8
  store i64 %194, i64* %195, align 8
  br label %196

196:                                              ; preds = %182, %101
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %197, %200
  %202 = load i32, i32* %6, align 4
  %203 = load i32*, i32** %9, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = sub i64 %206, 1
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %202, %209
  %211 = call i32 @FFMIN(i32 %201, i32 %210)
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %196, %162, %148, %98, %48, %19
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @els_import_byte(%struct.TYPE_5__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
