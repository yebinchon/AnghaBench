; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1ScaledSpriteDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1ScaledSpriteDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp1ScaledSpriteDraw(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @Vdp1ReadCommand(%struct.TYPE_7__* %19, i32 %22, i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %15, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %16, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 15
  switch i32 %40, label %42 [
    i32 0, label %41
    i32 5, label %63
    i32 6, label %72
    i32 7, label %87
    i32 9, label %101
    i32 10, label %116
    i32 11, label %135
    i32 13, label %153
    i32 14, label %167
    i32 15, label %185
  ]

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %3, %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %15, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  br label %202

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %18, align 4
  br label %202

72:                                               ; preds = %3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %17, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %17, align 4
  %81 = sdiv i32 %80, 2
  %82 = sub nsw i32 %79, %81
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %202

87:                                               ; preds = %3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %17, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %17, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %18, align 4
  br label %202

101:                                              ; preds = %3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %17, align 4
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %18, align 4
  %110 = sdiv i32 %109, 2
  %111 = sub nsw i32 %108, %110
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %202

116:                                              ; preds = %3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %17, align 4
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %17, align 4
  %125 = sdiv i32 %124, 2
  %126 = sub nsw i32 %123, %125
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %18, align 4
  %129 = sdiv i32 %128, 2
  %130 = sub nsw i32 %127, %129
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %202

135:                                              ; preds = %3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %17, align 4
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %18, align 4
  %147 = sdiv i32 %146, 2
  %148 = sub nsw i32 %145, %147
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %18, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %18, align 4
  br label %202

153:                                              ; preds = %3
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %17, align 4
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %18, align 4
  %162 = sub nsw i32 %160, %161
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %18, align 4
  br label %202

167:                                              ; preds = %3
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %17, align 4
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %17, align 4
  %176 = sdiv i32 %175, 2
  %177 = sub nsw i32 %174, %176
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %18, align 4
  %180 = sub nsw i32 %178, %179
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %18, align 4
  br label %202

185:                                              ; preds = %3
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %17, align 4
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %18, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %17, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %18, align 4
  %197 = sub nsw i32 %195, %196
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %18, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %18, align 4
  br label %202

202:                                              ; preds = %185, %167, %153, %135, %116, %101, %87, %72, %63, %42
  %203 = load i32, i32* %15, align 4
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %16, align 4
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %205, %206
  %208 = sub nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %210, %211
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %214, %215
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %7, align 4
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %219, %220
  %222 = sub nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i32*, i32** %4, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %233 = load i32*, i32** %6, align 8
  %234 = call i32 @drawQuad(i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32* %231, %struct.TYPE_8__* %232, %struct.TYPE_7__* %19, i32* %233)
  ret void
}

declare dso_local i32 @Vdp1ReadCommand(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @drawQuad(i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
