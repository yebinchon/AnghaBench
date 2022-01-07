; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_ptr1_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/svp/extr_ssp16.c_ptr1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8**, i8** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i64* }

@ssp = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @ptr1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptr1_write(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 3
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 6
  %10 = and i32 %9, 4
  %11 = or i32 %7, %10
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 1
  %14 = and i32 %13, 24
  %15 = or i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %193 [
    i32 0, label %17
    i32 1, label %17
    i32 2, label %17
    i32 3, label %35
    i32 4, label %43
    i32 5, label %43
    i32 6, label %43
    i32 7, label %61
    i32 8, label %69
    i32 24, label %69
    i32 9, label %69
    i32 25, label %69
    i32 10, label %69
    i32 26, label %69
    i32 11, label %88
    i32 12, label %96
    i32 28, label %96
    i32 13, label %96
    i32 29, label %96
    i32 14, label %96
    i32 30, label %96
    i32 15, label %115
    i32 16, label %123
    i32 17, label %123
    i32 18, label %123
    i32 19, label %142
    i32 20, label %150
    i32 21, label %150
    i32 22, label %150
    i32 23, label %169
    i32 27, label %177
    i32 31, label %185
  ]

17:                                               ; preds = %2, %2, %2
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8*, i8** %23, i64 %33
  store i8* %18, i8** %34, align 8
  br label %193

35:                                               ; preds = %2
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %36, i8** %42, align 8
  br label %193

43:                                               ; preds = %2, %2, %2
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8*, i8** %49, i64 %59
  store i8* %44, i8** %60, align 8
  br label %193

61:                                               ; preds = %2
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %62, i8** %68, align 8
  br label %193

69:                                               ; preds = %2, %2, %2, %2, %2, %2
  %70 = load i8*, i8** %4, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds i8*, i8** %75, i64 %85
  store i8* %70, i8** %87, align 8
  br label %193

88:                                               ; preds = %2
  %89 = load i8*, i8** %4, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* %89, i8** %95, align 8
  br label %193

96:                                               ; preds = %2, %2, %2, %2, %2, %2
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 3
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = getelementptr inbounds i8*, i8** %102, i64 %112
  store i8* %97, i8** %114, align 8
  br label %193

115:                                              ; preds = %2
  %116 = load i8*, i8** %4, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  store i8* %116, i8** %122, align 8
  br label %193

123:                                              ; preds = %2, %2, %2
  %124 = load i8*, i8** %4, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i8**, i8*** %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = and i32 %135, 3
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, -1
  store i64 %140, i64* %138, align 8
  %141 = getelementptr inbounds i8*, i8** %129, i64 %139
  store i8* %124, i8** %141, align 8
  br label %193

142:                                              ; preds = %2
  %143 = load i8*, i8** %4, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 2
  store i8* %143, i8** %149, align 8
  br label %193

150:                                              ; preds = %2, %2, %2
  %151 = load i8*, i8** %4, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i8**, i8*** %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = and i32 %162, 3
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %161, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, -1
  store i64 %167, i64* %165, align 8
  %168 = getelementptr inbounds i8*, i8** %156, i64 %166
  store i8* %151, i8** %168, align 8
  br label %193

169:                                              ; preds = %2
  %170 = load i8*, i8** %4, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 2
  store i8* %170, i8** %176, align 8
  br label %193

177:                                              ; preds = %2
  %178 = load i8*, i8** %4, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 3
  store i8* %178, i8** %184, align 8
  br label %193

185:                                              ; preds = %2
  %186 = load i8*, i8** %4, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ssp, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i8**, i8*** %190, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 3
  store i8* %186, i8** %192, align 8
  br label %193

193:                                              ; preds = %17, %35, %43, %61, %69, %88, %96, %115, %123, %142, %150, %169, %177, %185, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
