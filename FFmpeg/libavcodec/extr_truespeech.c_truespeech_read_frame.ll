; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truespeech.c_truespeech_read_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truespeech.c_truespeech_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i32*, i8**, i8**, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, i32*, i32)* }

@ts_codebook = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @truespeech_read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truespeech_read_frame(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 %9(i32* %13, i32* %14, i32 8)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @init_get_bits(i32* %5, i64 %18, i32 256)
  %20 = load i8***, i8**** @ts_codebook, align 8
  %21 = getelementptr inbounds i8**, i8*** %20, i64 7
  %22 = load i8**, i8*** %21, align 8
  %23 = call i32 @get_bits(i32* %5, i32 3)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 6
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 7
  store i8* %26, i8** %30, align 8
  %31 = load i8***, i8**** @ts_codebook, align 8
  %32 = getelementptr inbounds i8**, i8*** %31, i64 6
  %33 = load i8**, i8*** %32, align 8
  %34 = call i32 @get_bits(i32* %5, i32 3)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 6
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 6
  store i8* %37, i8** %41, align 8
  %42 = load i8***, i8**** @ts_codebook, align 8
  %43 = getelementptr inbounds i8**, i8*** %42, i64 5
  %44 = load i8**, i8*** %43, align 8
  %45 = call i32 @get_bits(i32* %5, i32 3)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 6
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 5
  store i8* %48, i8** %52, align 8
  %53 = load i8***, i8**** @ts_codebook, align 8
  %54 = getelementptr inbounds i8**, i8*** %53, i64 4
  %55 = load i8**, i8*** %54, align 8
  %56 = call i32 @get_bits(i32* %5, i32 4)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 4
  store i8* %59, i8** %63, align 8
  %64 = load i8***, i8**** @ts_codebook, align 8
  %65 = getelementptr inbounds i8**, i8*** %64, i64 3
  %66 = load i8**, i8*** %65, align 8
  %67 = call i32 @get_bits(i32* %5, i32 4)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 3
  store i8* %70, i8** %74, align 8
  %75 = load i8***, i8**** @ts_codebook, align 8
  %76 = getelementptr inbounds i8**, i8*** %75, i64 2
  %77 = load i8**, i8*** %76, align 8
  %78 = call i32 @get_bits(i32* %5, i32 4)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  store i8* %81, i8** %85, align 8
  %86 = load i8***, i8**** @ts_codebook, align 8
  %87 = getelementptr inbounds i8**, i8*** %86, i64 1
  %88 = load i8**, i8*** %87, align 8
  %89 = call i32 @get_bits(i32* %5, i32 5)
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 6
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  store i8* %92, i8** %96, align 8
  %97 = load i8***, i8**** @ts_codebook, align 8
  %98 = getelementptr inbounds i8**, i8*** %97, i64 0
  %99 = load i8**, i8*** %98, align 8
  %100 = call i32 @get_bits(i32* %5, i32 5)
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  store i8* %103, i8** %107, align 8
  %108 = call i32 @get_bits1(i32* %5)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = call i32 @get_bits(i32* %5, i32 4)
  %112 = shl i32 %111, 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  %117 = call i32 @get_bits(i32* %5, i32 7)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  store i32 %117, i32* %121, align 4
  %122 = call i32 @get_bits(i32* %5, i32 7)
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 %122, i32* %126, align 4
  %127 = call i32 @get_bits(i32* %5, i32 7)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %127, i32* %131, align 4
  %132 = call i32 @get_bits(i32* %5, i32 7)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = call i32 @get_bits(i32* %5, i32 4)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 %137, i32* %141, align 4
  %142 = call i32 @get_bits(i32* %5, i32 14)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %142, i32* %146, align 4
  %147 = call i32 @get_bits(i32* %5, i32 14)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 %147, i32* %151, align 4
  %152 = call i32 @get_bits(i32* %5, i32 4)
  %153 = shl i32 %152, 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %153
  store i32 %159, i32* %157, align 4
  %160 = call i32 @get_bits(i32* %5, i32 14)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  store i32 %160, i32* %164, align 4
  %165 = call i32 @get_bits(i32* %5, i32 14)
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32 %165, i32* %169, align 4
  %170 = call i32 @get_bits1(i32* %5)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %170
  store i32 %176, i32* %174, align 4
  %177 = call i8* @get_bits_long(i32* %5, i32 27)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 5
  %180 = load i8**, i8*** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  store i8* %177, i8** %181, align 8
  %182 = call i32 @get_bits(i32* %5, i32 4)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 %182, i32* %186, align 4
  %187 = call i32 @get_bits1(i32* %5)
  %188 = shl i32 %187, 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %188
  store i32 %194, i32* %192, align 4
  %195 = call i8* @get_bits_long(i32* %5, i32 27)
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 5
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 1
  store i8* %195, i8** %199, align 8
  %200 = call i32 @get_bits(i32* %5, i32 4)
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %200, i32* %204, align 4
  %205 = call i32 @get_bits1(i32* %5)
  %206 = shl i32 %205, 2
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %206
  store i32 %212, i32* %210, align 4
  %213 = call i8* @get_bits_long(i32* %5, i32 27)
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 5
  %216 = load i8**, i8*** %215, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 2
  store i8* %213, i8** %217, align 8
  %218 = call i32 @get_bits(i32* %5, i32 4)
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 4
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  store i32 %218, i32* %222, align 4
  %223 = call i32 @get_bits1(i32* %5)
  %224 = shl i32 %223, 3
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %224
  store i32 %230, i32* %228, align 4
  %231 = call i8* @get_bits_long(i32* %5, i32 27)
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 5
  %234 = load i8**, i8*** %233, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 3
  store i8* %231, i8** %235, align 8
  %236 = call i32 @get_bits(i32* %5, i32 4)
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  store i32 %236, i32* %240, align 4
  ret void
}

declare dso_local i32 @init_get_bits(i32*, i64, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i8* @get_bits_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
