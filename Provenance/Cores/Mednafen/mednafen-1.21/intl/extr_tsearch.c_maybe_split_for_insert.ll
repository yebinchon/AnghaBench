; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_tsearch.c_maybe_split_for_insert.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_tsearch.c_maybe_split_for_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__**, i32, i32, i32)* @maybe_split_for_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_split_for_insert(%struct.TYPE_5__** %0, %struct.TYPE_5__** %1, %struct.TYPE_5__** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__**, align 8
  %15 = alloca %struct.TYPE_5__**, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %13, align 8
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store %struct.TYPE_5__** %22, %struct.TYPE_5__*** %14, align 8
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %struct.TYPE_5__** %25, %struct.TYPE_5__*** %15, align 8
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %48, label %28

28:                                               ; preds = %6
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %156

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %156

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %156

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %156

48:                                               ; preds = %42, %6
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %68 = icmp ne %struct.TYPE_5__** %67, null
  br i1 %68, label %69, label %155

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %155

75:                                               ; preds = %69
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %16, align 8
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %17, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %11, align 4
  %84 = icmp sgt i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %125

87:                                               ; preds = %75
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %87
  %97 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %100, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %102, align 8
  %103 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %106, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %108, align 8
  br label %122

109:                                              ; preds = %87
  %110 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %115 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %115, align 8
  %116 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %121 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %14, align 8
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %121, align 8
  br label %122

122:                                              ; preds = %109, %96
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %124, align 8
  br label %154

125:                                              ; preds = %75
  %126 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %127, %struct.TYPE_5__** %128, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store %struct.TYPE_5__* %138, %struct.TYPE_5__** %140, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store %struct.TYPE_5__* %141, %struct.TYPE_5__** %143, align 8
  br label %153

144:                                              ; preds = %125
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %149, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store %struct.TYPE_5__* %150, %struct.TYPE_5__** %152, align 8
  br label %153

153:                                              ; preds = %144, %135
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %69, %66
  br label %156

156:                                              ; preds = %155, %42, %36, %32, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
