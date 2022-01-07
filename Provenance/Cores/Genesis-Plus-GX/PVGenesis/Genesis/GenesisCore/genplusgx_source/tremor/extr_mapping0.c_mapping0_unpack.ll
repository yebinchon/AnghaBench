; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_mapping0.c_mapping0_unpack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_mapping0.c_mapping0_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i32*)* @mapping0_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @mapping0_unpack(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = call i64 @_ogg_calloc(i32 1, i32 48)
  %13 = inttoptr i64 %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = call i32 @memset(%struct.TYPE_9__* %18, i32 0, i32 48)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @oggpack_read(i32* %20, i32 1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @oggpack_read(i32* %24, i32 4)
  %26 = add nsw i32 %25, 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @oggpack_read(i32* %33, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @oggpack_read(i32* %37, i32 8)
  %39 = add nsw i32 %38, 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %96, %36
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ilog(i32 %52)
  %54 = call i32 @oggpack_read(i32* %49, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  store i32 %54, i32* %9, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ilog(i32 %64)
  %66 = call i32 @oggpack_read(i32* %61, i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  store i32 %66, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %48
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %82, %78, %75, %48
  br label %207

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %42

99:                                               ; preds = %42
  br label %100

100:                                              ; preds = %99, %32
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @oggpack_read(i32* %101, i32 2)
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %207

105:                                              ; preds = %100
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %143

110:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %139, %110
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %111
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @oggpack_read(i32* %118, i32 4)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sge i32 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %117
  br label %207

138:                                              ; preds = %117
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %111

142:                                              ; preds = %111
  br label %143

143:                                              ; preds = %142, %105
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %202, %143
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %205

150:                                              ; preds = %144
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @oggpack_read(i32* %151, i32 8)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sge i32 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %207

159:                                              ; preds = %150
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @oggpack_read(i32* %160, i32 8)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %161, i32* %167, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp sge i32 %174, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %159
  br label %207

180:                                              ; preds = %159
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @oggpack_read(i32* %181, i32 8)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 6
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp sge i32 %195, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %180
  br label %207

201:                                              ; preds = %180
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %144

205:                                              ; preds = %144
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %206, %struct.TYPE_9__** %3, align 8
  br label %210

207:                                              ; preds = %200, %179, %158, %137, %104, %94
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %209 = call i32 @mapping0_free_info(%struct.TYPE_9__* %208)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %210

210:                                              ; preds = %207, %205
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %211
}

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i32 @ilog(i32) #1

declare dso_local i32 @mapping0_free_info(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
