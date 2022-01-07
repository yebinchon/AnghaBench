; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_memref.c_rc_memref_get_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_memref.c_rc_memref_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32 (i32, i32, i8*)*, i8*)* @rc_memref_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_memref_get_value(%struct.TYPE_3__* %0, i32 (i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32 (i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 (i32, i32, i8*)* %1, i32 (i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %246 [
    i32 137, label %11
    i32 136, label %20
    i32 135, label %29
    i32 134, label %38
    i32 133, label %47
    i32 132, label %56
    i32 131, label %65
    i32 130, label %74
    i32 128, label %83
    i32 129, label %91
    i32 138, label %100
    i32 141, label %120
    i32 140, label %152
    i32 139, label %194
  ]

11:                                               ; preds = %3
  %12 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 %12(i32 %15, i32 1, i8* %16)
  %18 = ashr i32 %17, 0
  %19 = and i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %247

20:                                               ; preds = %3
  %21 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 %21(i32 %24, i32 1, i8* %25)
  %27 = ashr i32 %26, 1
  %28 = and i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %247

29:                                               ; preds = %3
  %30 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 %30(i32 %33, i32 1, i8* %34)
  %36 = ashr i32 %35, 2
  %37 = and i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %247

38:                                               ; preds = %3
  %39 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 %39(i32 %42, i32 1, i8* %43)
  %45 = ashr i32 %44, 3
  %46 = and i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %247

47:                                               ; preds = %3
  %48 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 %48(i32 %51, i32 1, i8* %52)
  %54 = ashr i32 %53, 4
  %55 = and i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %247

56:                                               ; preds = %3
  %57 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 %57(i32 %60, i32 1, i8* %61)
  %63 = ashr i32 %62, 5
  %64 = and i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %247

65:                                               ; preds = %3
  %66 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 %66(i32 %69, i32 1, i8* %70)
  %72 = ashr i32 %71, 6
  %73 = and i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %247

74:                                               ; preds = %3
  %75 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 %75(i32 %78, i32 1, i8* %79)
  %81 = ashr i32 %80, 7
  %82 = and i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %247

83:                                               ; preds = %3
  %84 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 %84(i32 %87, i32 1, i8* %88)
  %90 = and i32 %89, 15
  store i32 %90, i32* %7, align 4
  br label %247

91:                                               ; preds = %3
  %92 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 %92(i32 %95, i32 1, i8* %96)
  %98 = ashr i32 %97, 4
  %99 = and i32 %98, 15
  store i32 %99, i32* %7, align 4
  br label %247

100:                                              ; preds = %3
  %101 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 %101(i32 %104, i32 1, i8* %105)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load i32, i32* %7, align 4
  %113 = lshr i32 %112, 4
  %114 = and i32 %113, 15
  %115 = mul i32 %114, 10
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, 15
  %118 = add i32 %115, %117
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %111, %100
  br label %247

120:                                              ; preds = %3
  %121 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 %121(i32 %124, i32 2, i8* %125)
  store i32 %126, i32* %7, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %120
  %132 = load i32, i32* %7, align 4
  %133 = lshr i32 %132, 12
  %134 = and i32 %133, 15
  %135 = mul i32 %134, 1000
  %136 = load i32, i32* %7, align 4
  %137 = lshr i32 %136, 8
  %138 = and i32 %137, 15
  %139 = mul i32 %138, 100
  %140 = add i32 %135, %139
  %141 = load i32, i32* %7, align 4
  %142 = lshr i32 %141, 4
  %143 = and i32 %142, 15
  %144 = mul i32 %143, 10
  %145 = add i32 %140, %144
  %146 = load i32, i32* %7, align 4
  %147 = lshr i32 %146, 0
  %148 = and i32 %147, 15
  %149 = mul i32 %148, 1
  %150 = add i32 %145, %149
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %131, %120
  br label %247

152:                                              ; preds = %3
  %153 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 %153(i32 %156, i32 4, i8* %157)
  store i32 %158, i32* %7, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %193

163:                                              ; preds = %152
  %164 = load i32, i32* %7, align 4
  %165 = lshr i32 %164, 20
  %166 = and i32 %165, 15
  %167 = mul i32 %166, 100000
  %168 = load i32, i32* %7, align 4
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 15
  %171 = mul i32 %170, 10000
  %172 = add i32 %167, %171
  %173 = load i32, i32* %7, align 4
  %174 = lshr i32 %173, 12
  %175 = and i32 %174, 15
  %176 = mul i32 %175, 1000
  %177 = add i32 %172, %176
  %178 = load i32, i32* %7, align 4
  %179 = lshr i32 %178, 8
  %180 = and i32 %179, 15
  %181 = mul i32 %180, 100
  %182 = add i32 %177, %181
  %183 = load i32, i32* %7, align 4
  %184 = lshr i32 %183, 4
  %185 = and i32 %184, 15
  %186 = mul i32 %185, 10
  %187 = add i32 %182, %186
  %188 = load i32, i32* %7, align 4
  %189 = lshr i32 %188, 0
  %190 = and i32 %189, 15
  %191 = mul i32 %190, 1
  %192 = add i32 %187, %191
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %163, %152
  br label %247

194:                                              ; preds = %3
  %195 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 %195(i32 %198, i32 4, i8* %199)
  store i32 %200, i32* %7, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %245

205:                                              ; preds = %194
  %206 = load i32, i32* %7, align 4
  %207 = lshr i32 %206, 28
  %208 = and i32 %207, 15
  %209 = mul i32 %208, 10000000
  %210 = load i32, i32* %7, align 4
  %211 = lshr i32 %210, 24
  %212 = and i32 %211, 15
  %213 = mul i32 %212, 1000000
  %214 = add i32 %209, %213
  %215 = load i32, i32* %7, align 4
  %216 = lshr i32 %215, 20
  %217 = and i32 %216, 15
  %218 = mul i32 %217, 100000
  %219 = add i32 %214, %218
  %220 = load i32, i32* %7, align 4
  %221 = lshr i32 %220, 16
  %222 = and i32 %221, 15
  %223 = mul i32 %222, 10000
  %224 = add i32 %219, %223
  %225 = load i32, i32* %7, align 4
  %226 = lshr i32 %225, 12
  %227 = and i32 %226, 15
  %228 = mul i32 %227, 1000
  %229 = add i32 %224, %228
  %230 = load i32, i32* %7, align 4
  %231 = lshr i32 %230, 8
  %232 = and i32 %231, 15
  %233 = mul i32 %232, 100
  %234 = add i32 %229, %233
  %235 = load i32, i32* %7, align 4
  %236 = lshr i32 %235, 4
  %237 = and i32 %236, 15
  %238 = mul i32 %237, 10
  %239 = add i32 %234, %238
  %240 = load i32, i32* %7, align 4
  %241 = lshr i32 %240, 0
  %242 = and i32 %241, 15
  %243 = mul i32 %242, 1
  %244 = add i32 %239, %243
  store i32 %244, i32* %7, align 4
  br label %245

245:                                              ; preds = %205, %194
  br label %247

246:                                              ; preds = %3
  store i32 0, i32* %7, align 4
  br label %247

247:                                              ; preds = %246, %245, %193, %151, %119, %91, %83, %74, %65, %56, %47, %38, %29, %20, %11
  %248 = load i32, i32* %7, align 4
  ret i32 %248
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
