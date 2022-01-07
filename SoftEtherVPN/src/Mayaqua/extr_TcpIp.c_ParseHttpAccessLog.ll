; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseHttpAccessLog.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ParseHttpAccessLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i8** }

@.str = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HEAD \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"POST \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"referer\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"user-agent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ParseHttpAccessLog(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = icmp eq %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %198

19:                                               ; preds = %1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %198

29:                                               ; preds = %19
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @CmpCaseIgnore(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @CmpCaseIgnore(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @CmpCaseIgnore(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %198

42:                                               ; preds = %37, %33, %29
  %43 = call i32 @Zero(%struct.TYPE_17__* %4, i32 56)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @Endian16(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 6
  store i32 %50, i32* %51, align 8
  %52 = call i32* (...) @NewBuf()
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @WriteBuf(i32* %53, i32* %54, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @SeekBuf(i32* %57, i32 0, i32 0)
  %59 = load i32*, i32** %7, align 8
  %60 = call i8* @CfgReadNextLine(i32* %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %188

63:                                               ; preds = %42
  %64 = load i8*, i8** %8, align 8
  %65 = call %struct.TYPE_15__* @ParseToken(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %10, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = icmp ne %struct.TYPE_15__* %66, null
  br i1 %67, label %68, label %187

68:                                               ; preds = %63
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %184

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @StrCpy(i8* %75, i32 8, i8* %80)
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @Trim(i8* %83)
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @StrCpy(i8* %86, i32 8, i8* %91)
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @Trim(i8* %94)
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @StrCpy(i8* %97, i32 8, i8* %102)
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @Trim(i8* %105)
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @StrUpper(i8* %108)
  br label %110

110:                                              ; preds = %73, %174
  %111 = load i32*, i32** %7, align 8
  %112 = call i8* @CfgReadNextLine(i32* %111)
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %177

116:                                              ; preds = %110
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @SearchStr(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @INFINITE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %174

122:                                              ; preds = %116
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @MAX_SIZE, align 4
  %125 = sdiv i32 %124, 2
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %174

127:                                              ; preds = %122
  %128 = load i32, i32* @MAX_SIZE, align 4
  %129 = zext i32 %128 to i64
  %130 = call i8* @llvm.stacksave()
  store i8* %130, i8** %13, align 8
  %131 = alloca i8, i64 %129, align 16
  store i64 %129, i64* %14, align 8
  %132 = load i32, i32* @MAX_SIZE, align 4
  %133 = zext i32 %132 to i64
  %134 = alloca i8, i64 %133, align 16
  store i64 %133, i64* %15, align 8
  %135 = trunc i64 %129 to i32
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @StrCpy(i8* %131, i32 %135, i8* %136)
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %131, i64 %139
  store i8 0, i8* %140, align 1
  %141 = call i32 @Trim(i8* %131)
  %142 = trunc i64 %133 to i32
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = call i32 @StrCpy(i8* %134, i32 %142, i8* %147)
  %149 = call i32 @Trim(i8* %134)
  %150 = call i64 @StrCmpi(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %127
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @StrCpy(i8* %154, i32 8, i8* %134)
  br label %172

156:                                              ; preds = %127
  %157 = call i64 @StrCmpi(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @StrCpy(i8* %161, i32 8, i8* %134)
  br label %171

163:                                              ; preds = %156
  %164 = call i64 @StrCmpi(i8* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 5
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @StrCpy(i8* %168, i32 8, i8* %134)
  br label %170

170:                                              ; preds = %166, %163
  br label %171

171:                                              ; preds = %170, %159
  br label %172

172:                                              ; preds = %171, %152
  %173 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %173)
  br label %174

174:                                              ; preds = %172, %122, %116
  %175 = load i8*, i8** %11, align 8
  %176 = call i32 @Free(i8* %175)
  br label %110

177:                                              ; preds = %115
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 3
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @IsEmptyStr(i8* %179)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  store i32 1, i32* %9, align 4
  br label %183

183:                                              ; preds = %182, %177
  br label %184

184:                                              ; preds = %183, %68
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %186 = call i32 @FreeToken(%struct.TYPE_15__* %185)
  br label %187

187:                                              ; preds = %184, %63
  br label %188

188:                                              ; preds = %187, %42
  %189 = load i8*, i8** %8, align 8
  %190 = call i32 @Free(i8* %189)
  %191 = load i32*, i32** %7, align 8
  %192 = call i32 @FreeBuf(i32* %191)
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = call %struct.TYPE_17__* @Clone(%struct.TYPE_17__* %4, i32 56)
  store %struct.TYPE_17__* %196, %struct.TYPE_17__** %2, align 8
  br label %198

197:                                              ; preds = %188
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %198

198:                                              ; preds = %197, %195, %41, %28, %18
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %199
}

declare dso_local i64 @CmpCaseIgnore(i32*, i8*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i32*, i32) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local %struct.TYPE_15__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @StrUpper(i8*) #1

declare dso_local i32 @SearchStr(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @StrCmpi(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_15__*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local %struct.TYPE_17__* @Clone(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
