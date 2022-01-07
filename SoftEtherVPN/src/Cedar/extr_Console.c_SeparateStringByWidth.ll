; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_SeparateStringByWidth.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_SeparateStringByWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32** }

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @SeparateStringByWidth(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call %struct.TYPE_4__* (...) @UniNullToken()
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %3, align 8
  br label %184

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = call i32* @NewListFast(i32* null)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @UniStrLen(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 32
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @ZeroMalloc(i32 %32)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %7, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %129, %24
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %132

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %72 [
    i32 0, label %47
    i32 13, label %47
    i32 10, label %47
  ]

47:                                               ; preds = %40, %40, %40
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 13
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58, %50
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 0, i32* %67, align 4
  store i32 0, i32* %6, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @UniCopyStr(i32* %69)
  %71 = call i32 @Insert(i32* %68, i32 %70)
  br label %128

72:                                               ; preds = %40
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @GetNextWordWidth(i32* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @UniStrWidth(i32* %79)
  %81 = sub nsw i32 %78, %80
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp sge i32 %82, 1
  br i1 %83, label %84, label %102

84:                                               ; preds = %72
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 0, i32* %97, align 4
  store i32 0, i32* %6, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @UniCopyStr(i32* %99)
  %101 = call i32 @Insert(i32* %98, i32 %100)
  br label %102

102:                                              ; preds = %92, %88, %84, %72
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 0, i32* %112, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @UniStrWidth(i32* %113)
  %115 = load i32, i32* %5, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %102
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 0, i32* %122, align 4
  store i32 0, i32* %6, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @UniCopyStr(i32* %124)
  %126 = call i32 @Insert(i32* %123, i32 %125)
  br label %127

127:                                              ; preds = %117, %102
  br label %128

128:                                              ; preds = %127, %62
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %35

132:                                              ; preds = %35
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @LIST_NUM(i32* %133)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @CopyUniStr(i8* bitcast ([1 x i32]* @.str to i8*))
  %139 = call i32 @Insert(i32* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %132
  %141 = call i8* @ZeroMalloc(i32 16)
  %142 = bitcast i8* %141 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %142, %struct.TYPE_4__** %11, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @LIST_NUM(i32* %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = mul i64 8, %150
  %152 = trunc i64 %151 to i32
  %153 = call i8* @ZeroMalloc(i32 %152)
  %154 = bitcast i8* %153 to i32**
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32** %154, i32*** %156, align 8
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %175, %140
  %158 = load i32, i32* %9, align 4
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @LIST_NUM(i32* %159)
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %157
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32* @LIST_DATA(i32* %163, i32 %164)
  store i32* %165, i32** %15, align 8
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @UniTrimLeft(i32* %166)
  %168 = load i32*, i32** %15, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  store i32* %168, i32** %174, align 8
  br label %175

175:                                              ; preds = %162
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %157

178:                                              ; preds = %157
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @ReleaseList(i32* %179)
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @Free(i32* %181)
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %183, %struct.TYPE_4__** %3, align 8
  br label %184

184:                                              ; preds = %178, %18
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %185
}

declare dso_local %struct.TYPE_4__* @UniNullToken(...) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @UniStrLen(i32*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @Insert(i32*, i32) #1

declare dso_local i32 @UniCopyStr(i32*) #1

declare dso_local i32 @GetNextWordWidth(i32*) #1

declare dso_local i32 @UniStrWidth(i32*) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local i32 @CopyUniStr(i8*) #1

declare dso_local i32* @LIST_DATA(i32*, i32) #1

declare dso_local i32 @UniTrimLeft(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
