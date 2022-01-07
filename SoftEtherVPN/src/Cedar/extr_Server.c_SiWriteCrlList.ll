; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteCrlList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiWriteCrlList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Crl%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"CommonName\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Organization\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@MD5_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"DigestMD5\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"DigestSHA1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Serial\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiWriteCrlList(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  br label %193

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @LockList(i32* %24)
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %187, %23
  %27 = load i64, i64* %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @LIST_NUM(i32* %28)
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %190

31:                                               ; preds = %26
  %32 = load i32, i32* @MAX_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %6, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %7, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call %struct.TYPE_7__* @LIST_DATA(i32* %36, i64 %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %8, align 8
  %39 = trunc i64 %33 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @Format(i8* %35, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32* @CfgCreateFolder(i32* %42, i8* %35)
  store i32* %43, i32** %9, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %10, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @UniIsEmptyStr(i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %31
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CfgAddUniStr(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %31
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @UniIsEmptyStr(i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CfgAddUniStr(i32* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @UniIsEmptyStr(i32 %73)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @CfgAddUniStr(i32* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @UniIsEmptyStr(i32 %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CfgAddUniStr(i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @UniIsEmptyStr(i32 %97)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @CfgAddUniStr(i32* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %94
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @UniIsEmptyStr(i32 %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @CfgAddUniStr(i32* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MD5_SIZE, align 4
  %123 = call i32 @IsZero(i32 %121, i32 %122)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %118
  %126 = load i32, i32* @MAX_SIZE, align 4
  %127 = zext i32 %126 to i64
  %128 = call i8* @llvm.stacksave()
  store i8* %128, i8** %11, align 8
  %129 = alloca i8, i64 %127, align 16
  store i64 %127, i64* %12, align 8
  %130 = trunc i64 %127 to i32
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MD5_SIZE, align 4
  %135 = call i32 @BinToStr(i8* %129, i32 %130, i32 %133, i32 %134)
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @CfgAddStr(i32* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %129)
  %138 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %138)
  br label %139

139:                                              ; preds = %125, %118
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SHA1_SIZE, align 4
  %144 = call i32 @IsZero(i32 %142, i32 %143)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %139
  %147 = load i32, i32* @MAX_SIZE, align 4
  %148 = zext i32 %147 to i64
  %149 = call i8* @llvm.stacksave()
  store i8* %149, i8** %13, align 8
  %150 = alloca i8, i64 %148, align 16
  store i64 %148, i64* %14, align 8
  %151 = trunc i64 %148 to i32
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SHA1_SIZE, align 4
  %156 = call i32 @BinToStr(i8* %150, i32 %151, i32 %154, i32 %155)
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 @CfgAddStr(i32* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %150)
  %159 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %159)
  br label %160

160:                                              ; preds = %146, %139
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = icmp ne %struct.TYPE_5__* %163, null
  br i1 %164, label %165, label %185

165:                                              ; preds = %160
  %166 = load i32, i32* @MAX_SIZE, align 4
  %167 = zext i32 %166 to i64
  %168 = call i8* @llvm.stacksave()
  store i8* %168, i8** %15, align 8
  %169 = alloca i8, i64 %167, align 16
  store i64 %167, i64* %16, align 8
  %170 = trunc i64 %167 to i32
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @BinToStr(i8* %169, i32 %170, i32 %175, i32 %180)
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @CfgAddStr(i32* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %169)
  %184 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %184)
  br label %185

185:                                              ; preds = %165, %160
  %186 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %186)
  br label %187

187:                                              ; preds = %185
  %188 = load i64, i64* %5, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %5, align 8
  br label %26

190:                                              ; preds = %26
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @UnlockList(i32* %191)
  br label %193

193:                                              ; preds = %190, %22
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_7__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Format(i8*, i32, i8*, i64) #1

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @UniIsEmptyStr(i32) #1

declare dso_local i32 @CfgAddUniStr(i32*, i8*, i32) #1

declare dso_local i32 @IsZero(i32, i32) #1

declare dso_local i32 @BinToStr(i8*, i32, i32, i32) #1

declare dso_local i32 @CfgAddStr(i32*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
