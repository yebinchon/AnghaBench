; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_ParseHostPort.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_ParseHostPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseHostPort(i8* %0, i8** %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %188

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @StartWith(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @InStr(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load i32, i32* @MAX_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %14, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %33 = trunc i64 %30 to i32
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @StrCpy(i8* %32, i32 %33, i8* %34)
  %36 = call i64 @SearchStrEx(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @INFINITE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %28
  %41 = call i64 @StrLen(i8* %32)
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %13, align 8
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %57, %40
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %16, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i8, i8* %32, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 58
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i8, i8* %32, i64 %54
  store i8 64, i8* %55, align 1
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %43

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i8**, i8*** %7, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @ParseHostPortAtmark(i8* %32, i8** %62, i64* %63, i64 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %188

67:                                               ; preds = %24
  br label %68

68:                                               ; preds = %67, %20
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 @InStr(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = load i8**, i8*** %7, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @ParseHostPortAtmark(i8* %73, i8** %74, i64* %75, i64 %76)
  store i32 %77, i32* %5, align 4
  br label %188

78:                                               ; preds = %68
  %79 = load i8*, i8** %6, align 8
  %80 = call %struct.TYPE_4__* @ParseToken(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %10, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = icmp eq %struct.TYPE_4__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %188

84:                                               ; preds = %78
  %85 = load i64*, i64** %8, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i64*, i64** %8, align 8
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i64, i64* %9, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %99 = call i32 @FreeToken(%struct.TYPE_4__* %98)
  store i32 0, i32* %5, align 4
  br label %188

100:                                              ; preds = %92
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ToInt(i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = call i32 @FreeToken(%struct.TYPE_4__* %109)
  store i32 0, i32* %5, align 4
  br label %188

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %89
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %115, 2
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @ToInt(i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %127 = call i32 @FreeToken(%struct.TYPE_4__* %126)
  store i32 0, i32* %5, align 4
  br label %188

128:                                              ; preds = %117, %112
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sge i32 %131, 1
  br i1 %132, label %133, label %173

133:                                              ; preds = %128
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @IsEmptyStr(i32 %138)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %133
  store i32 1, i32* %11, align 4
  %142 = load i8**, i8*** %7, align 8
  %143 = icmp ne i8** %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @CopyStr(i32 %149)
  %151 = load i8**, i8*** %7, align 8
  store i8* %150, i8** %151, align 8
  %152 = load i8**, i8*** %7, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @Trim(i8* %153)
  br label %155

155:                                              ; preds = %144, %141
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sge i32 %158, 2
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load i64*, i64** %8, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @ToInt(i32 %168)
  %170 = load i64*, i64** %8, align 8
  store i64 %169, i64* %170, align 8
  br label %171

171:                                              ; preds = %163, %160
  br label %172

172:                                              ; preds = %171, %155
  br label %173

173:                                              ; preds = %172, %133, %128
  %174 = load i64*, i64** %8, align 8
  %175 = icmp ne i64* %174, null
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i64*, i64** %8, align 8
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i64, i64* %9, align 8
  %182 = load i64*, i64** %8, align 8
  store i64 %181, i64* %182, align 8
  br label %183

183:                                              ; preds = %180, %176
  br label %184

184:                                              ; preds = %183, %173
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %186 = call i32 @FreeToken(%struct.TYPE_4__* %185)
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %184, %125, %108, %97, %83, %72, %61, %19
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i64 @InStr(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i64 @SearchStrEx(i8*, i8*, i32, i32) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32 @ParseHostPortAtmark(i8*, i8**, i64*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.TYPE_4__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

declare dso_local i64 @ToInt(i32) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i8* @CopyStr(i32) #1

declare dso_local i32 @Trim(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
