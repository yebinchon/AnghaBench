; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_ptr1_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_ptr1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64*, i8**, i8** }

@ssp = common dso_local global %struct.TYPE_2__* null, align 8
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
  switch i32 %16, label %187 [
    i32 0, label %17
    i32 1, label %17
    i32 2, label %17
    i32 3, label %31
    i32 4, label %37
    i32 5, label %37
    i32 6, label %37
    i32 7, label %51
    i32 8, label %57
    i32 9, label %57
    i32 10, label %57
    i32 11, label %72
    i32 12, label %78
    i32 13, label %78
    i32 14, label %78
    i32 15, label %93
    i32 16, label %99
    i32 17, label %99
    i32 18, label %99
    i32 19, label %115
    i32 20, label %121
    i32 21, label %121
    i32 22, label %121
    i32 23, label %137
    i32 24, label %143
    i32 25, label %143
    i32 26, label %143
    i32 27, label %159
    i32 28, label %165
    i32 29, label %165
    i32 30, label %165
    i32 31, label %181
  ]

17:                                               ; preds = %2, %2, %2
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i8**, i8*** %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8*, i8** %21, i64 %29
  store i8* %18, i8** %30, align 8
  br label %187

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %32, i8** %36, align 8
  br label %187

37:                                               ; preds = %2, %2, %2
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %41, i64 %49
  store i8* %38, i8** %50, align 8
  br label %187

51:                                               ; preds = %2
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %52, i8** %56, align 8
  br label %187

57:                                               ; preds = %2, %2, %2
  %58 = load i8*, i8** %4, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i8**, i8*** %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = getelementptr inbounds i8*, i8** %61, i64 %69
  store i8* %58, i8** %71, align 8
  br label %187

72:                                               ; preds = %2
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  store i8* %73, i8** %77, align 8
  br label %187

78:                                               ; preds = %2, %2, %2
  %79 = load i8*, i8** %4, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds i8*, i8** %82, i64 %90
  store i8* %79, i8** %92, align 8
  br label %187

93:                                               ; preds = %2
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  store i8* %94, i8** %98, align 8
  br label %187

99:                                               ; preds = %2, %2, %2
  %100 = load i8*, i8** %4, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i8**, i8*** %102, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %110, align 8
  %113 = getelementptr inbounds i8*, i8** %103, i64 %111
  store i8* %100, i8** %113, align 8
  %114 = call i32 (...) @CHECK_RPL()
  br label %187

115:                                              ; preds = %2
  %116 = load i8*, i8** %4, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  store i8* %116, i8** %120, align 8
  br label %187

121:                                              ; preds = %2, %2, %2
  %122 = load i8*, i8** %4, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i8**, i8*** %124, align 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, 3
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds i8*, i8** %125, i64 %133
  store i8* %122, i8** %135, align 8
  %136 = call i32 (...) @CHECK_RPL()
  br label %187

137:                                              ; preds = %2
  %138 = load i8*, i8** %4, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 2
  store i8* %138, i8** %142, align 8
  br label %187

143:                                              ; preds = %2, %2, %2
  %144 = load i8*, i8** %4, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i8**, i8*** %146, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  %157 = getelementptr inbounds i8*, i8** %147, i64 %155
  store i8* %144, i8** %157, align 8
  %158 = call i32 (...) @CHECK_RPL()
  br label %187

159:                                              ; preds = %2
  %160 = load i8*, i8** %4, align 8
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 3
  store i8* %160, i8** %164, align 8
  br label %187

165:                                              ; preds = %2, %2, %2
  %166 = load i8*, i8** %4, align 8
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i8**, i8*** %168, align 8
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = and i32 %173, 3
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %172, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %176, align 8
  %179 = getelementptr inbounds i8*, i8** %169, i64 %177
  store i8* %166, i8** %179, align 8
  %180 = call i32 (...) @CHECK_RPL()
  br label %187

181:                                              ; preds = %2
  %182 = load i8*, i8** %4, align 8
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ssp, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 2
  %185 = load i8**, i8*** %184, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 3
  store i8* %182, i8** %186, align 8
  br label %187

187:                                              ; preds = %17, %31, %37, %51, %57, %72, %78, %93, %99, %115, %121, %137, %143, %159, %165, %181, %2
  ret void
}

declare dso_local i32 @CHECK_RPL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
