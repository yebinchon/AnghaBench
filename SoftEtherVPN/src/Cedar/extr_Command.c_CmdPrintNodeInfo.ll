; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdPrintNodeInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdPrintNodeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SM_NODE_CLIENT_NAME\00", align 1
@.str.1 = private unnamed_addr constant [8 x i32] [i32 37, i32 117, i32 46, i32 37, i32 48, i32 50, i32 117, i32 0], align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"SM_NODE_CLIENT_VER\00", align 1
@.str.3 = private unnamed_addr constant [9 x i32] [i32 66, i32 117, i32 105, i32 108, i32 100, i32 32, i32 37, i32 117, i32 0], align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"SM_NODE_CLIENT_BUILD\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"SM_NODE_CLIENT_OS_NAME\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"SM_NODE_CLIENT_OS_VER\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SM_NODE_CLIENT_OS_PID\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"SM_NODE_CLIENT_HOST\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"SM_NODE_CLIENT_IP\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"SM_NODE_CLIENT_PORT\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"SM_NODE_SERVER_HOST\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"SM_NODE_SERVER_IP\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"SM_NODE_SERVER_PORT\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"SM_NODE_PROXY_HOSTNAME\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"SM_NODE_PROXY_IP\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"SM_NODE_PROXY_PORT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CmdPrintNodeInfo(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i32, i32* @MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 1, i32* %8, align 4
  br label %185

22:                                               ; preds = %18
  %23 = mul nuw i64 4, %10
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @StrToUni(i32* %12, i32 %24, i8* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @CtInsert(i32* %29, i32 %30, i32* %12)
  %32 = mul nuw i64 4, %10
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 17
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @Endian32(i32 %36)
  %38 = sdiv i32 %37, 100
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @Endian32(i32 %41)
  %43 = srem i32 %42, 100
  %44 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %12, i32 %33, i8* bitcast ([8 x i32]* @.str.1 to i8*), i32 %38, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @CtInsert(i32* %45, i32 %46, i32* %12)
  %48 = mul nuw i64 4, %10
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @Endian32(i32 %52)
  %54 = call i32 (i32*, i32, i8*, i32, ...) @UniFormat(i32* %12, i32 %49, i8* bitcast ([9 x i32]* @.str.3 to i8*), i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 @CtInsert(i32* %55, i32 %56, i32* %12)
  %58 = mul nuw i64 4, %10
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @StrToUni(i32* %12, i32 %59, i8* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %66 = call i32 @CtInsert(i32* %64, i32 %65, i32* %12)
  %67 = mul nuw i64 4, %10
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @StrToUni(i32* %12, i32 %68, i8* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %75 = call i32 @CtInsert(i32* %73, i32 %74, i32* %12)
  %76 = mul nuw i64 4, %10
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @StrToUni(i32* %12, i32 %77, i8* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %84 = call i32 @CtInsert(i32* %82, i32 %83, i32* %12)
  %85 = mul nuw i64 4, %10
  %86 = trunc i64 %85 to i32
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @StrToUni(i32* %12, i32 %86, i8* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %93 = call i32 @CtInsert(i32* %91, i32 %92, i32* %12)
  %94 = trunc i64 %14 to i32
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @IPToStr4or6(i8* %15, i32 %94, i32 %97, i32 %100)
  %102 = mul nuw i64 4, %10
  %103 = trunc i64 %102 to i32
  %104 = call i32 @StrToUni(i32* %12, i32 %103, i8* %15)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %107 = call i32 @CtInsert(i32* %105, i32 %106, i32* %12)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 13
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @Endian32(i32 %110)
  %112 = call i32 @UniToStru(i32* %12, i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %115 = call i32 @CtInsert(i32* %113, i32 %114, i32* %12)
  %116 = mul nuw i64 4, %10
  %117 = trunc i64 %116 to i32
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @StrToUni(i32* %12, i32 %117, i8* %120)
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %124 = call i32 @CtInsert(i32* %122, i32 %123, i32* %12)
  %125 = trunc i64 %14 to i32
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 12
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @IPToStr4or6(i8* %15, i32 %125, i32 %128, i32 %131)
  %133 = mul nuw i64 4, %10
  %134 = trunc i64 %133 to i32
  %135 = call i32 @StrToUni(i32* %12, i32 %134, i8* %15)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %138 = call i32 @CtInsert(i32* %136, i32 %137, i32* %12)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @Endian32(i32 %141)
  %143 = call i32 @UniToStru(i32* %12, i32 %142)
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %146 = call i32 @CtInsert(i32* %144, i32 %145, i32* %12)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 6
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @StrLen(i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %184

152:                                              ; preds = %22
  %153 = mul nuw i64 4, %10
  %154 = trunc i64 %153 to i32
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 6
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @StrToUni(i32* %12, i32 %154, i8* %157)
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @_UU(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %161 = call i32 @CtInsert(i32* %159, i32 %160, i32* %12)
  %162 = trunc i64 %14 to i32
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @IPToStr4or6(i8* %15, i32 %162, i32 %165, i32 %168)
  %170 = mul nuw i64 4, %10
  %171 = trunc i64 %170 to i32
  %172 = call i32 @StrToUni(i32* %12, i32 %171, i8* %15)
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %175 = call i32 @CtInsert(i32* %173, i32 %174, i32* %12)
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @Endian32(i32 %178)
  %180 = call i32 @UniToStru(i32* %12, i32 %179)
  %181 = load i32*, i32** %3, align 8
  %182 = call i32 @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %183 = call i32 @CtInsert(i32* %181, i32 %182, i32* %12)
  br label %184

184:                                              ; preds = %152, %22
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %184, %21
  %186 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %8, align 4
  switch i32 %187, label %189 [
    i32 0, label %188
    i32 1, label %188
  ]

188:                                              ; preds = %185, %185
  ret void

189:                                              ; preds = %185
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #2

declare dso_local i32 @CtInsert(i32*, i32, i32*) #2

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32, ...) #2

declare dso_local i32 @Endian32(i32) #2

declare dso_local i32 @IPToStr4or6(i8*, i32, i32, i32) #2

declare dso_local i32 @UniToStru(i32*, i32) #2

declare dso_local i64 @StrLen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
