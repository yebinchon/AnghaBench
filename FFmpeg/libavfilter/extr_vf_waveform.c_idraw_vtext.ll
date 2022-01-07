; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_idraw_vtext.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_idraw_vtext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32* }

@avpriv_cga_font = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, float, float, i8*, i32*)* @idraw_vtext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idraw_vtext(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, float %4, float %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %25 = load i32*, i32** @avpriv_cga_font, align 8
  store i32* %25, i32** %17, align 8
  store i32 8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %26

26:                                               ; preds = %156, %8
  %27 = load i32, i32* %20, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %20, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %29, %26
  %39 = phi i1 [ false, %26 ], [ %37, %29 ]
  br i1 %39, label %40, label %159

40:                                               ; preds = %38
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %152, %40
  %42 = load i8*, i8** %15, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %155

48:                                               ; preds = %41
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %23, align 4
  %54 = load i32, i32* %18, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %21, align 4
  br label %56

56:                                               ; preds = %148, %48
  %57 = load i32, i32* %21, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %151

59:                                               ; preds = %56
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %19, align 4
  %69 = mul nsw i32 %68, 10
  %70 = add nsw i32 %67, %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %70, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %66, i64 %79
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32* %83, i32** %24, align 8
  store i32 128, i32* %22, align 4
  br label %84

84:                                               ; preds = %144, %59
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %147

87:                                               ; preds = %84
  %88 = load i32*, i32** %17, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i32, i32* %18, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %96, %97
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %21, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %88, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %22, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %87
  %109 = load i32*, i32** %24, align 8
  %110 = load i32, i32* %21, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to float
  %115 = load float, float* %14, align 4
  %116 = fmul float %114, %115
  %117 = load i32, i32* %23, align 4
  %118 = load i32*, i32** %24, align 8
  %119 = load i32, i32* %21, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %117, %122
  %124 = sitofp i32 %123 to float
  %125 = load float, float* %13, align 4
  %126 = fmul float %124, %125
  %127 = fadd float %116, %126
  %128 = fptosi float %127 to i32
  %129 = load i32*, i32** %24, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  br label %133

133:                                              ; preds = %108, %87
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %20, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %24, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %24, align 8
  br label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %22, align 4
  %146 = ashr i32 %145, 1
  store i32 %146, i32* %22, align 4
  br label %84

147:                                              ; preds = %84
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %21, align 4
  br label %56

151:                                              ; preds = %56
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %19, align 4
  br label %41

155:                                              ; preds = %41
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %20, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %20, align 4
  br label %26

159:                                              ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
