; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_StrToSystem.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_StrToSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToSystem(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca [3 x i8], align 1
  %12 = alloca [3 x i8], align 1
  %13 = alloca [3 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = bitcast [3 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 3, i1 false)
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %158

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @StrLen(i8* %22)
  %24 = icmp ne i32 %23, 13
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @StrLen(i8* %26)
  %28 = icmp ne i32 %27, 15
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %158

30:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %30, %21
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 12
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 90
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %158

48:                                               ; preds = %41
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %49, align 1
  %53 = getelementptr inbounds i8, i8* %49, i64 1
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %53, align 1
  %57 = getelementptr inbounds i8, i8* %53, i64 1
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %58, align 1
  %62 = getelementptr inbounds i8, i8* %58, i64 1
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %62, align 1
  %66 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 0, i8* %66, align 1
  %67 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %67, align 1
  %71 = getelementptr inbounds i8, i8* %67, i64 1
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %71, align 1
  %75 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 0, i8* %75, align 1
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 6
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %76, align 1
  %80 = getelementptr inbounds i8, i8* %76, i64 1
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 7
  %83 = load i8, i8* %82, align 1
  store i8 %83, i8* %80, align 1
  %84 = getelementptr inbounds i8, i8* %80, i64 1
  store i8 0, i8* %84, align 1
  %85 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 8
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %85, align 1
  %89 = getelementptr inbounds i8, i8* %85, i64 1
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 9
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* %89, align 1
  %93 = getelementptr inbounds i8, i8* %89, i64 1
  store i8 0, i8* %93, align 1
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 10
  %97 = load i8, i8* %96, align 1
  store i8 %97, i8* %94, align 1
  %98 = getelementptr inbounds i8, i8* %94, i64 1
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 11
  %101 = load i8, i8* %100, align 1
  store i8 %101, i8* %98, align 1
  %102 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 0, i8* %102, align 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = call i32 @Zero(%struct.TYPE_5__* %103, i32 24)
  %105 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %106 = call i32 @ToInt(i8* %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %48
  %112 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %113 = call i32 @ToInt(i8* %112)
  %114 = mul nsw i32 %113, 100
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %135

119:                                              ; preds = %48
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sge i32 %122, 60
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1900
  store i32 %128, i32* %126, align 4
  br label %134

129:                                              ; preds = %119
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 2000
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %129, %124
  br label %135

135:                                              ; preds = %134, %111
  %136 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %137 = call i32 @ToInt(i8* %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %141 = call i32 @ToInt(i8* %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %145 = call i32 @ToInt(i8* %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %149 = call i32 @ToInt(i8* %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %153 = call i32 @ToInt(i8* %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = call i32 @NormalizeSystem(%struct.TYPE_5__* %156)
  store i32 1, i32* %3, align 4
  br label %158

158:                                              ; preds = %135, %47, %29, %20
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @ToInt(i8*) #2

declare dso_local i32 @NormalizeSystem(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
