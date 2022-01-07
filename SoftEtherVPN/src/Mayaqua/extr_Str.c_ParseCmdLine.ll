; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ParseCmdLine.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ParseCmdLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ParseCmdLine(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call %struct.TYPE_4__* (...) @NullToken()
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %2, align 8
  br label %185

17:                                               ; preds = %1
  %18 = call i32* @NewListFast(i32* null)
  store i32* %18, i32** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @StrSize(i8* %19)
  %21 = add nsw i64 %20, 32
  %22 = call i8* @Malloc(i64 %21)
  store i8* %22, i8** %11, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @StrLen(i8* %23)
  store i64 %24, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %128, %17
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %131

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %10, align 1
  %34 = load i64, i64* %9, align 8
  switch i64 %34, label %127 [
    i64 0, label %35
    i64 1, label %73
  ]

35:                                               ; preds = %29
  %36 = load i8, i8* %10, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %10, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  br label %72

44:                                               ; preds = %39
  %45 = load i8, i8* %10, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 34
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  %60 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 34, i8* %60, align 1
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %64

63:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %71

65:                                               ; preds = %44
  %66 = load i8, i8* %10, align 1
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 %66, i8* %70, align 1
  br label %71

71:                                               ; preds = %65, %64
  store i64 1, i64* %9, align 8
  br label %72

72:                                               ; preds = %71, %43
  br label %127

73:                                               ; preds = %29
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load i8, i8* %10, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8, i8* %10, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 9
  br i1 %83, label %84, label %93

84:                                               ; preds = %80, %76
  %85 = load i8*, i8** %11, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  %88 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 0, i8* %88, align 1
  store i64 0, i64* %8, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @CopyStr(i8* %90)
  %92 = call i32 @Insert(i32* %89, i32 %91)
  store i64 0, i64* %9, align 8
  br label %126

93:                                               ; preds = %80, %73
  %94 = load i8, i8* %10, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 34
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load i8*, i8** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 34
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load i8*, i8** %11, align 8
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  %109 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 34, i8* %109, align 1
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %118

112:                                              ; preds = %97
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 1, i32* %12, align 4
  br label %117

116:                                              ; preds = %112
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %116, %115
  br label %118

118:                                              ; preds = %117, %105
  br label %125

119:                                              ; preds = %93
  %120 = load i8, i8* %10, align 1
  %121 = load i8*, i8** %11, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %8, align 8
  %124 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8 %120, i8* %124, align 1
  br label %125

125:                                              ; preds = %119, %118
  br label %126

126:                                              ; preds = %125, %84
  br label %127

127:                                              ; preds = %29, %126, %72
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %6, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %6, align 8
  br label %25

131:                                              ; preds = %25
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i8*, i8** %11, align 8
  %136 = load i64, i64* %8, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %8, align 8
  %138 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 0, i8* %138, align 1
  %139 = load i32*, i32** %5, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @CopyStr(i8* %140)
  %142 = call i32 @Insert(i32* %139, i32 %141)
  br label %143

143:                                              ; preds = %134, %131
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @Free(i8* %144)
  %146 = call i8* @ZeroMalloc(i32 16)
  %147 = bitcast i8* %146 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %4, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @LIST_NUM(i32* %148)
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = mul i64 8, %155
  %157 = trunc i64 %156 to i32
  %158 = call i8* @ZeroMalloc(i32 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i32* %159, i32** %161, align 8
  store i64 0, i64* %6, align 8
  br label %162

162:                                              ; preds = %178, %143
  %163 = load i64, i64* %6, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = icmp ult i64 %163, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %162
  %170 = load i32*, i32** %5, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call i32 @LIST_DATA(i32* %170, i64 %171)
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 %172, i32* %177, align 4
  br label %178

178:                                              ; preds = %169
  %179 = load i64, i64* %6, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %6, align 8
  br label %162

181:                                              ; preds = %162
  %182 = load i32*, i32** %5, align 8
  %183 = call i32 @ReleaseList(i32* %182)
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %184, %struct.TYPE_4__** %2, align 8
  br label %185

185:                                              ; preds = %181, %15
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %186
}

declare dso_local %struct.TYPE_4__* @NullToken(...) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i8* @Malloc(i64) #1

declare dso_local i64 @StrSize(i8*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32 @Insert(i32*, i32) #1

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i32 @Free(i8*) #1

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
