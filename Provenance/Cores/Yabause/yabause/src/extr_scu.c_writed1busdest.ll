; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_writed1busdest.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_writed1busdest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32, i32, i8*, i8*, %struct.TYPE_3__, i8*, i8*** }
%struct.TYPE_3__ = type { i32 }

@ScuDsp = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @writed1busdest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writed1busdest(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %166 [
    i32 0, label %6
    i32 1, label %31
    i32 2, label %56
    i32 3, label %81
    i32 4, label %106
    i32 5, label %110
    i32 6, label %116
    i32 7, label %120
    i32 10, label %124
    i32 11, label %129
    i32 12, label %134
    i32 13, label %142
    i32 14, label %150
    i32 15, label %158
  ]

6:                                                ; preds = %2
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 7
  %10 = load i8***, i8**** %9, align 8
  %11 = getelementptr inbounds i8**, i8*** %10, i64 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8*, i8** %12, i64 %17
  store i8* %7, i8** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %29, 63
  store i64 %30, i64* %28, align 8
  br label %167

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  %35 = load i8***, i8**** %34, align 8
  %36 = getelementptr inbounds i8**, i8*** %35, i64 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8*, i8** %37, i64 %42
  store i8* %32, i8** %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, 63
  store i64 %55, i64* %53, align 8
  br label %167

56:                                               ; preds = %2
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 7
  %60 = load i8***, i8**** %59, align 8
  %61 = getelementptr inbounds i8**, i8*** %60, i64 2
  %62 = load i8**, i8*** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i8*, i8** %62, i64 %67
  store i8* %57, i8** %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, 63
  store i64 %80, i64* %78, align 8
  br label %167

81:                                               ; preds = %2
  %82 = load i8*, i8** %4, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 7
  %85 = load i8***, i8**** %84, align 8
  %86 = getelementptr inbounds i8**, i8*** %85, i64 3
  %87 = load i8**, i8*** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 3
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8*, i8** %87, i64 %92
  store i8* %82, i8** %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 3
  %104 = load i64, i64* %103, align 8
  %105 = and i64 %104, 63
  store i64 %105, i64* %103, align 8
  br label %167

106:                                              ; preds = %2
  %107 = load i8*, i8** %4, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  br label %167

110:                                              ; preds = %2
  %111 = load i8*, i8** %4, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %167

116:                                              ; preds = %2
  %117 = load i8*, i8** %4, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  br label %167

120:                                              ; preds = %2
  %121 = load i8*, i8** %4, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  br label %167

124:                                              ; preds = %2
  %125 = load i8*, i8** %4, align 8
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  br label %167

129:                                              ; preds = %2
  %130 = load i8*, i8** %4, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  br label %167

134:                                              ; preds = %2
  %135 = load i8*, i8** %4, align 8
  %136 = ptrtoint i8* %135 to i32
  %137 = sext i32 %136 to i64
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 %137, i64* %141, align 8
  br label %167

142:                                              ; preds = %2
  %143 = load i8*, i8** %4, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = sext i32 %144 to i64
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  store i64 %145, i64* %149, align 8
  br label %167

150:                                              ; preds = %2
  %151 = load i8*, i8** %4, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 2
  store i64 %153, i64* %157, align 8
  br label %167

158:                                              ; preds = %2
  %159 = load i8*, i8** %4, align 8
  %160 = ptrtoint i8* %159 to i32
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ScuDsp, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 3
  store i64 %161, i64* %165, align 8
  br label %167

166:                                              ; preds = %2
  br label %167

167:                                              ; preds = %6, %31, %56, %81, %106, %110, %116, %120, %124, %129, %134, %142, %150, %158, %166
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
