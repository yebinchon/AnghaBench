; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_bitwise.c_oggpack_look.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_bitwise.c_oggpack_look.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32* }

@mask = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @oggpack_look(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64*, i64** @mask, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i64 -1, i64* %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 3
  %26 = icmp sge i32 %21, %25
  br i1 %26, label %27, label %135

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i64 -1, i64* %3, align 8
  br label %229

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %134

43:                                               ; preds = %40
  %44 = call i32 (...) @_lookspan()
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %48, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %54, 8
  br i1 %55, label %56, label %133

56:                                               ; preds = %43
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  %59 = call i32 (...) @_lookspan()
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 8, %66
  %68 = shl i32 %63, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %7, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %7, align 8
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 16
  br i1 %73, label %74, label %132

74:                                               ; preds = %56
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  %77 = call i32 (...) @_lookspan()
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 16, %84
  %86 = shl i32 %81, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %7, align 8
  %90 = load i32, i32* %5, align 4
  %91 = icmp sgt i32 %90, 24
  br i1 %91, label %92, label %131

92:                                               ; preds = %74
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %8, align 4
  %95 = call i32 (...) @_lookspan()
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  %98 = load i8, i8* %96, align 1
  %99 = zext i8 %98 to i32
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 24, %102
  %104 = shl i32 %99, %103
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %7, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %7, align 8
  %108 = load i32, i32* %5, align 4
  %109 = icmp sgt i32 %108, 32
  br i1 %109, label %110, label %130

110:                                              ; preds = %92
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %8, align 4
  %118 = call i32 (...) @_lookspan()
  %119 = load i8*, i8** %9, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 32, %124
  %126 = shl i32 %121, %125
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %7, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %115, %110, %92
  br label %131

131:                                              ; preds = %130, %74
  br label %132

132:                                              ; preds = %131, %56
  br label %133

133:                                              ; preds = %132, %43
  br label %134

134:                                              ; preds = %133, %40
  br label %224

135:                                              ; preds = %2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = ashr i32 %141, %144
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %7, align 8
  %147 = load i32, i32* %5, align 4
  %148 = icmp sgt i32 %147, 8
  br i1 %148, label %149, label %223

149:                                              ; preds = %135
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 8, %158
  %160 = shl i32 %155, %159
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %7, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %7, align 8
  %164 = load i32, i32* %5, align 4
  %165 = icmp sgt i32 %164, 16
  br i1 %165, label %166, label %222

166:                                              ; preds = %149
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 16, %175
  %177 = shl i32 %172, %176
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %7, align 8
  %180 = or i64 %179, %178
  store i64 %180, i64* %7, align 8
  %181 = load i32, i32* %5, align 4
  %182 = icmp sgt i32 %181, 24
  br i1 %182, label %183, label %221

183:                                              ; preds = %166
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 3
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 24, %192
  %194 = shl i32 %189, %193
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %7, align 8
  %197 = or i64 %196, %195
  store i64 %197, i64* %7, align 8
  %198 = load i32, i32* %5, align 4
  %199 = icmp sgt i32 %198, 32
  br i1 %199, label %200, label %220

200:                                              ; preds = %183
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %200
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 4
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 32, %214
  %216 = shl i32 %211, %215
  %217 = sext i32 %216 to i64
  %218 = load i64, i64* %7, align 8
  %219 = or i64 %218, %217
  store i64 %219, i64* %7, align 8
  br label %220

220:                                              ; preds = %205, %200, %183
  br label %221

221:                                              ; preds = %220, %166
  br label %222

222:                                              ; preds = %221, %149
  br label %223

223:                                              ; preds = %222, %135
  br label %224

224:                                              ; preds = %223, %134
  %225 = load i64, i64* %6, align 8
  %226 = load i64, i64* %7, align 8
  %227 = and i64 %226, %225
  store i64 %227, i64* %7, align 8
  %228 = load i64, i64* %7, align 8
  store i64 %228, i64* %3, align 8
  br label %229

229:                                              ; preds = %224, %39
  %230 = load i64, i64* %3, align 8
  ret i64 %230
}

declare dso_local i32 @_lookspan(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
