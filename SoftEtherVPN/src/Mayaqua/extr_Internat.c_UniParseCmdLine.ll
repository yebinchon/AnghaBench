; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniParseCmdLine.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniParseCmdLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @UniParseCmdLine(i32* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call %struct.TYPE_4__* (...) @UniNullToken()
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %2, align 8
  br label %177

17:                                               ; preds = %1
  %18 = call i32* @NewListFast(i32* null)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @UniStrSize(i32* %19)
  %21 = add nsw i64 %20, 32
  %22 = call i32* @Malloc(i64 %21)
  store i32* %22, i32** %11, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @UniStrLen(i32* %23)
  store i64 %24, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %120, %17
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %123

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i64, i64* %9, align 8
  switch i64 %34, label %119 [
    i64 0, label %35
    i64 1, label %69
  ]

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  br label %68

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load i32*, i32** %3, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 34
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32*, i32** %11, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 34, i32* %56, align 4
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %60

59:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %52
  br label %67

61:                                               ; preds = %42
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  %66 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %60
  store i64 1, i64* %9, align 8
  br label %68

68:                                               ; preds = %67, %41
  br label %119

69:                                               ; preds = %29
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %78, label %87

78:                                               ; preds = %75, %72
  %79 = load i32*, i32** %11, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  %82 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 0, i32* %82, align 4
  store i64 0, i64* %8, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @UniCopyStr(i32* %84)
  %86 = call i32 @Insert(i32* %83, i32 %85)
  store i64 0, i64* %9, align 8
  br label %118

87:                                               ; preds = %75, %69
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 34
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load i32*, i32** %3, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 34
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32*, i32** %11, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  %101 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 34, i32* %101, align 4
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %110

104:                                              ; preds = %90
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 1, i32* %12, align 4
  br label %109

108:                                              ; preds = %104
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %97
  br label %117

111:                                              ; preds = %87
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %8, align 8
  %116 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %110
  br label %118

118:                                              ; preds = %117, %78
  br label %119

119:                                              ; preds = %29, %118, %68
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %6, align 8
  br label %25

123:                                              ; preds = %25
  %124 = load i64, i64* %8, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i32*, i32** %11, align 8
  %128 = load i64, i64* %8, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %8, align 8
  %130 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 0, i32* %130, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @UniCopyStr(i32* %132)
  %134 = call i32 @Insert(i32* %131, i32 %133)
  br label %135

135:                                              ; preds = %126, %123
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @Free(i32* %136)
  %138 = call i8* @ZeroMalloc(i32 16)
  %139 = bitcast i8* %138 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %139, %struct.TYPE_4__** %4, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @LIST_NUM(i32* %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = mul i64 8, %147
  %149 = trunc i64 %148 to i32
  %150 = call i8* @ZeroMalloc(i32 %149)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i32* %151, i32** %153, align 8
  store i64 0, i64* %6, align 8
  br label %154

154:                                              ; preds = %170, %135
  %155 = load i64, i64* %6, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %155, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %154
  %162 = load i32*, i32** %5, align 8
  %163 = load i64, i64* %6, align 8
  %164 = call i32 @LIST_DATA(i32* %162, i64 %163)
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %6, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 %164, i32* %169, align 4
  br label %170

170:                                              ; preds = %161
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %6, align 8
  br label %154

173:                                              ; preds = %154
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @ReleaseList(i32* %174)
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %176, %struct.TYPE_4__** %2, align 8
  br label %177

177:                                              ; preds = %173, %15
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %178
}

declare dso_local %struct.TYPE_4__* @UniNullToken(...) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32* @Malloc(i64) #1

declare dso_local i64 @UniStrSize(i32*) #1

declare dso_local i64 @UniStrLen(i32*) #1

declare dso_local i32 @Insert(i32*, i32) #1

declare dso_local i32 @UniCopyStr(i32*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local i32 @LIST_DATA(i32*, i64) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
