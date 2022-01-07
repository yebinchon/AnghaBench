; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_dequeue_sc_classq_multi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_fq_codel.c_fq_if_dequeue_sc_classq_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fq_if_dequeue_sc_classq_multi(%struct.ifclassq* %0, i32 %1, i64 %2, i64 %3, i8** %4, i8** %5, i64* %6, i64* %7, i32* %8) #0 {
  %10 = alloca %struct.ifclassq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32 (i8*, i8*)*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.ifclassq* %0, %struct.ifclassq** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i8** %4, i8*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i32* %8, i32** %18, align 8
  %31 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %32 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %19, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %39 [
    i32 128, label %38
  ]

38:                                               ; preds = %9
  store i32 (i8*, i8*)* @fq_if_append_mbuf, i32 (i8*, i8*)** %26, align 8
  br label %41

39:                                               ; preds = %9
  %40 = call i32 @VERIFY(i32 0)
  br label %41

41:                                               ; preds = %39, %38
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @fq_if_service_to_priority(%struct.TYPE_8__* %42, i32 %43)
  store i64 %44, i64* %20, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i64, i64* %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %48
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %23, align 8
  br label %50

50:                                               ; preds = %95, %41
  %51 = load i64, i64* %21, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i64, i64* %22, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br label %64

64:                                               ; preds = %58, %54, %50
  %65 = phi i1 [ false, %54 ], [ false, %50 ], [ %63, %58 ]
  br i1 %65, label %66, label %97

66:                                               ; preds = %64
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %21, align 8
  %71 = sub i64 %69, %70
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %22, align 8
  %74 = sub i64 %72, %73
  %75 = load i32, i32* @TRUE, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = call i32 @fq_if_dequeue(%struct.TYPE_8__* %67, %struct.TYPE_9__* %68, i64 %71, i64 %74, i8** %27, i8** %28, i64* %29, i64* %30, i32 %75, i32* %76)
  %78 = load i8*, i8** %24, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load i8*, i8** %27, align 8
  store i8* %81, i8** %24, align 8
  %82 = load i64, i64* %29, align 8
  store i64 %82, i64* %21, align 8
  %83 = load i64, i64* %30, align 8
  store i64 %83, i64* %22, align 8
  br label %95

84:                                               ; preds = %66
  %85 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %26, align 8
  %86 = load i8*, i8** %25, align 8
  %87 = load i8*, i8** %27, align 8
  %88 = call i32 %85(i8* %86, i8* %87)
  %89 = load i64, i64* %29, align 8
  %90 = load i64, i64* %21, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %21, align 8
  %92 = load i64, i64* %30, align 8
  %93 = load i64, i64* %22, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %22, align 8
  br label %95

95:                                               ; preds = %84, %80
  %96 = load i8*, i8** %28, align 8
  store i8* %96, i8** %25, align 8
  br label %50

97:                                               ; preds = %64
  %98 = load i8*, i8** %24, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %125

100:                                              ; preds = %97
  %101 = load i8**, i8*** %14, align 8
  %102 = icmp ne i8** %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %24, align 8
  %105 = load i8**, i8*** %14, align 8
  store i8* %104, i8** %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i8**, i8*** %15, align 8
  %108 = icmp ne i8** %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** %25, align 8
  %111 = load i8**, i8*** %15, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i64*, i64** %16, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i64, i64* %21, align 8
  %117 = load i64*, i64** %16, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i64*, i64** %17, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64, i64* %22, align 8
  %123 = load i64*, i64** %17, align 8
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  br label %146

125:                                              ; preds = %97
  %126 = load i8**, i8*** %14, align 8
  %127 = icmp ne i8** %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i8**, i8*** %14, align 8
  store i8* null, i8** %129, align 8
  br label %130

130:                                              ; preds = %128, %125
  %131 = load i8**, i8*** %15, align 8
  %132 = icmp ne i8** %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i8**, i8*** %15, align 8
  store i8* null, i8** %134, align 8
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i64*, i64** %16, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i64*, i64** %16, align 8
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i64*, i64** %17, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i64*, i64** %17, align 8
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %143, %140
  br label %146

146:                                              ; preds = %145, %124
  ret i32 0
}

declare dso_local i32 @fq_if_append_mbuf(i8*, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @fq_if_service_to_priority(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fq_if_dequeue(%struct.TYPE_8__*, %struct.TYPE_9__*, i64, i64, i8**, i8**, i64*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
