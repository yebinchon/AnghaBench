; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decpgssub.c_make_empty_pgs.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decpgssub.c_make_empty_pgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @make_empty_pgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_empty_pgs(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %176, %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %180

24:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %172, %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %176

32:                                               ; preds = %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %49, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 22
  br i1 %62, label %63, label %172

63:                                               ; preds = %32
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %66, %69
  br i1 %70, label %71, label %172

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 10
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %113, %71
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 8
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %106, 128
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %95
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 8
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109, %95
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %91

116:                                              ; preds = %91
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %116
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %137, %138
  %140 = call i32 @memmove(i32* %128, i32* %134, i32 %139)
  br label %141

141:                                              ; preds = %122, %116
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %145, %146
  %148 = add nsw i32 %142, %147
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  store i32 1, i32* %4, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 2
  %154 = sub nsw i32 %151, %153
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = ashr i32 %155, 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %156, i32* %162, align 4
  %163 = load i32, i32* %7, align 4
  %164 = and i32 %163, 255
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %164, i32* %171, align 4
  br label %176

172:                                              ; preds = %63, %32
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %5, align 4
  br label %25

176:                                              ; preds = %141, %25
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  store %struct.TYPE_3__* %179, %struct.TYPE_3__** %3, align 8
  br label %15

180:                                              ; preds = %22
  ret void
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
