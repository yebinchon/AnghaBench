; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_recurseQuad.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_recurseQuad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32***, i32* }

@cinTable = common dso_local global %struct.TYPE_3__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@MAXSIZE = common dso_local global i64 0, align 8
@cin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MINSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64)* @recurseQuad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recurseQuad(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %19 = load i64, i64* @currentHandle, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %17, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %24 = load i64, i64* @currentHandle, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %29 = load i64, i64* @currentHandle, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %35 = load i64, i64* @currentHandle, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %5
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %42 = load i64, i64* @currentHandle, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %40, %5
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %49 = load i64, i64* @currentHandle, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %47, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %56 = load i64, i64* @currentHandle, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %54, %46
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %139

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* %12, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %139

70:                                               ; preds = %64
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* %13, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %139

76:                                               ; preds = %70
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %139

80:                                               ; preds = %76
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @MAXSIZE, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %139

84:                                               ; preds = %80
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* %16, align 8
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 1), align 8
  %87 = load i64, i64* %16, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %89 = load i64, i64* @currentHandle, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = sub nsw i64 %92, %93
  %95 = ashr i64 %94, 1
  %96 = add nsw i64 %87, %95
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %100 = load i64, i64* @currentHandle, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = mul nsw i64 %98, %103
  %105 = getelementptr inbounds i32, i32* %86, i64 %104
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %9, align 8
  %108 = add nsw i64 %106, %107
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %110 = load i64, i64* @currentHandle, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = mul nsw i64 %108, %113
  %115 = getelementptr inbounds i32, i32* %105, i64 %114
  store i32* %115, i32** %11, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %118 = getelementptr inbounds i32**, i32*** %117, i64 0
  %119 = load i32**, i32*** %118, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %121 = load i64, i64* @currentHandle, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32*, i32** %119, i64 %124
  store i32* %116, i32** %125, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = load i64, i64* %17, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %130 = getelementptr inbounds i32**, i32*** %129, i64 1
  %131 = load i32**, i32*** %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %133 = load i64, i64* @currentHandle, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = getelementptr inbounds i32*, i32** %131, i64 %136
  store i32* %128, i32** %138, align 8
  br label %139

139:                                              ; preds = %84, %80, %76, %70, %64, %60
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* @MINSIZE, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %174

143:                                              ; preds = %139
  %144 = load i64, i64* %8, align 8
  %145 = ashr i64 %144, 1
  store i64 %145, i64* %8, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %10, align 8
  call void @recurseQuad(i64 %146, i64 %147, i64 %148, i64 %149, i64 %150)
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %8, align 8
  %153 = add nsw i64 %151, %152
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %10, align 8
  call void @recurseQuad(i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* %8, align 8
  %161 = add nsw i64 %159, %160
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %10, align 8
  call void @recurseQuad(i64 %158, i64 %161, i64 %162, i64 %163, i64 %164)
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* %8, align 8
  %167 = add nsw i64 %165, %166
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* %8, align 8
  %170 = add nsw i64 %168, %169
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* %10, align 8
  call void @recurseQuad(i64 %167, i64 %170, i64 %171, i64 %172, i64 %173)
  br label %174

174:                                              ; preds = %143, %139
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
