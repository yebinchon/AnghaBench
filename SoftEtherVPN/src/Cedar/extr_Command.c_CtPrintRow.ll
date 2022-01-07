; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CtPrintRow.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CtPrintRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*, i8*)* }

@.str = private unnamed_addr constant [4 x i32] [i32 45, i32 45, i32 45, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CtPrintRow(%struct.TYPE_6__* %0, i64 %1, i64* %2, i8** %3, i32* %4, i8 signext %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca [4 x i8], align 1
  %25 = alloca [2 x i8], align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8 %5, i8* %12, align 1
  store i32 1, i32* %16, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i64*, i64** %9, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i8**, i8*** %10, align 8
  %36 = icmp eq i8** %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %31, %28, %6
  br label %205

41:                                               ; preds = %37
  store i64 32, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 1, %50
  %52 = add i64 %51, 6
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %42

58:                                               ; preds = %42
  %59 = load i64, i64* %15, align 8
  %60 = call i8* @ZeroMalloc(i64 %59)
  store i8* %60, i8** %14, align 8
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %167, %58
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %170

65:                                               ; preds = %61
  store i64 0, i64* %20, align 8
  %66 = load i8**, i8*** %10, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = call i64 @UniStrCmpi(i8* %70, i8* bitcast ([4 x i32]* @.str to i8*))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @MakeCharArray(i8 signext 45, i64 %77)
  store i8* %78, i8** %23, align 8
  %79 = load i8*, i8** %23, align 8
  %80 = call i8* @CopyStrToUni(i8* %79)
  store i8* %80, i8** %21, align 8
  store i8* %80, i8** %22, align 8
  %81 = load i8*, i8** %23, align 8
  %82 = call i32 @Free(i8* %81)
  br label %84

83:                                               ; preds = %65
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i8*, i8** %21, align 8
  %86 = call i64 @UniStrWidth(i8* %85)
  store i64 %86, i64* %19, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %19, align 8
  %92 = icmp uge i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load i64*, i64** %9, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %19, align 8
  %99 = sub i64 %97, %98
  store i64 %99, i64* %20, align 8
  br label %100

100:                                              ; preds = %93, %84
  %101 = load i64, i64* %20, align 8
  %102 = call i8* @MakeCharArray(i8 signext 32, i64 %101)
  store i8* %102, i8** %17, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = call i8* @CopyStrToUni(i8* %103)
  store i8* %104, i8** %18, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load i8*, i8** %14, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = call i32 @UniStrCat(i8* %111, i64 %112, i8* %113)
  br label %115

115:                                              ; preds = %110, %100
  %116 = load i8*, i8** %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i8*, i8** %21, align 8
  %119 = call i32 @UniStrCat(i8* %116, i64 %117, i8* %118)
  %120 = load i32*, i32** %11, align 8
  %121 = load i64, i64* %13, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load i8*, i8** %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = call i32 @UniStrCat(i8* %126, i64 %127, i8* %128)
  br label %130

130:                                              ; preds = %125, %115
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 @Free(i8* %131)
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 @Free(i8* %133)
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %8, align 8
  %137 = sub i64 %136, 1
  %138 = icmp ult i64 %135, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %130
  %140 = load i8**, i8*** %10, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i8*, i8** %140, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @UniStrCmpi(i8* %143, i8* bitcast ([4 x i32]* @.str to i8*))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* %25, i64 0, i64 0
  store i8 43, i8* %147, align 1
  br label %151

148:                                              ; preds = %139
  %149 = load i8, i8* %12, align 1
  %150 = getelementptr inbounds [2 x i8], [2 x i8]* %25, i64 0, i64 0
  store i8 %149, i8* %150, align 1
  br label %151

151:                                              ; preds = %148, %146
  %152 = getelementptr inbounds [2 x i8], [2 x i8]* %25, i64 0, i64 1
  store i8 0, i8* %152, align 1
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %154 = getelementptr inbounds [2 x i8], [2 x i8]* %25, i64 0, i64 0
  %155 = call i32 @StrToUni(i8* %153, i32 4, i8* %154)
  %156 = load i8*, i8** %14, align 8
  %157 = load i64, i64* %15, align 8
  %158 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %159 = call i32 @UniStrCat(i8* %156, i64 %157, i8* %158)
  br label %160

160:                                              ; preds = %151, %130
  %161 = load i8*, i8** %22, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i8*, i8** %22, align 8
  %165 = call i32 @Free(i8* %164)
  br label %166

166:                                              ; preds = %163, %160
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %13, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %13, align 8
  br label %61

170:                                              ; preds = %61
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @UniTrimRight(i8* %171)
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %170
  %176 = load i8*, i8** %14, align 8
  %177 = call i32 @UniStrLen(i8* %176)
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %179, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %182 = call i32 %180(%struct.TYPE_6__* %181)
  %183 = sub nsw i32 %182, 1
  %184 = icmp sgt i32 %177, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %175
  %186 = load i8*, i8** %14, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %188, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %191 = call i32 %189(%struct.TYPE_6__* %190)
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %186, i64 %193
  store i8 0, i8* %194, align 1
  br label %195

195:                                              ; preds = %185, %175
  br label %196

196:                                              ; preds = %195, %170
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = load i8*, i8** %14, align 8
  %202 = call i32 %199(%struct.TYPE_6__* %200, i8* %201)
  %203 = load i8*, i8** %14, align 8
  %204 = call i32 @Free(i8* %203)
  br label %205

205:                                              ; preds = %196, %40
  ret void
}

declare dso_local i8* @ZeroMalloc(i64) #1

declare dso_local i64 @UniStrCmpi(i8*, i8*) #1

declare dso_local i8* @MakeCharArray(i8 signext, i64) #1

declare dso_local i8* @CopyStrToUni(i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @UniStrWidth(i8*) #1

declare dso_local i32 @UniStrCat(i8*, i64, i8*) #1

declare dso_local i32 @StrToUni(i8*, i32, i8*) #1

declare dso_local i32 @UniTrimRight(i8*) #1

declare dso_local i32 @UniStrLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
