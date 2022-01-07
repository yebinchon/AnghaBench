; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/utils/extr_oggplayer.c_f_seek.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/utils/extr_oggplayer.c_f_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@file = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @f_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_seek(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %213

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 3
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 1638
  br i1 %18, label %19, label %199

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 1641
  br i1 %22, label %23, label %199

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1638
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %213

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %39, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i64 %53, i64* %58, align 8
  store i32 -1, i32* %8, align 4
  br label %76

59:                                               ; preds = %38
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  store i32 -1, i32* %8, align 4
  br label %75

68:                                               ; preds = %59
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %69, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %62
  br label %76

76:                                               ; preds = %75, %47
  br label %77

77:                                               ; preds = %76, %35
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %135

80:                                               ; preds = %77
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sge i64 %88, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %80
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i64 %102, i64* %107, align 8
  store i32 -1, i32* %8, align 4
  br label %134

108:                                              ; preds = %80
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = add nsw i64 %114, %115
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %108
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  store i32 -1, i32* %8, align 4
  br label %133

124:                                              ; preds = %108
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %125
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %124, %118
  br label %134

134:                                              ; preds = %133, %96
  br label %135

135:                                              ; preds = %134, %77
  %136 = load i32, i32* %7, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %198

138:                                              ; preds = %135
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = add nsw i64 %144, %145
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp sge i64 %146, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %138
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  store i64 %160, i64* %165, align 8
  store i32 -1, i32* %8, align 4
  br label %197

166:                                              ; preds = %138
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = add nsw i64 %172, %173
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %166
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  store i32 -1, i32* %8, align 4
  br label %196

182:                                              ; preds = %166
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %6, align 8
  %190 = add nsw i64 %188, %189
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  store i64 %190, i64* %195, align 8
  br label %196

196:                                              ; preds = %182, %176
  br label %197

197:                                              ; preds = %196, %154
  br label %198

198:                                              ; preds = %197, %135
  br label %206

199:                                              ; preds = %19, %13
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* %6, align 8
  %203 = trunc i64 %202 to i32
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @lseek(i32 %201, i32 %203, i32 %204)
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %199, %198
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i32 -1, i32* %8, align 4
  br label %211

210:                                              ; preds = %206
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %210, %209
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %211, %34, %12
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
