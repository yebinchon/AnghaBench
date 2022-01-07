; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdInsertTrafficInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CmdInsertTrafficInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SM_ST_NUM_PACKET_STR\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SM_ST_SEND_UCAST_NUM\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SM_ST_SIZE_BYTE_STR\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SM_ST_SEND_UCAST_SIZE\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SM_ST_SEND_BCAST_NUM\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"SM_ST_SEND_BCAST_SIZE\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SM_ST_RECV_UCAST_NUM\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SM_ST_RECV_UCAST_SIZE\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SM_ST_RECV_BCAST_NUM\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"SM_ST_RECV_BCAST_SIZE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CmdInsertTrafficInfo(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = icmp eq %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store i32 1, i32* %8, align 4
  br label %132

19:                                               ; preds = %15
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ToStr3(i8* %20, i32 128, i32 %24)
  %26 = mul nuw i64 4, %10
  %27 = trunc i64 %26 to i32
  %28 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %30 = call i32 @UniFormat(i32* %12, i32 %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @CtInsert(i32* %31, i32 %32, i32* %12)
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ToStr3(i8* %34, i32 128, i32 %38)
  %40 = mul nuw i64 4, %10
  %41 = trunc i64 %40 to i32
  %42 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %44 = call i32 @UniFormat(i32* %12, i32 %41, i32 %42, i8* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @CtInsert(i32* %45, i32 %46, i32* %12)
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ToStr3(i8* %48, i32 128, i32 %52)
  %54 = mul nuw i64 4, %10
  %55 = trunc i64 %54 to i32
  %56 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %58 = call i32 @UniFormat(i32* %12, i32 %55, i32 %56, i8* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @CtInsert(i32* %59, i32 %60, i32* %12)
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ToStr3(i8* %62, i32 128, i32 %66)
  %68 = mul nuw i64 4, %10
  %69 = trunc i64 %68 to i32
  %70 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %72 = call i32 @UniFormat(i32* %12, i32 %69, i32 %70, i8* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %75 = call i32 @CtInsert(i32* %73, i32 %74, i32* %12)
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ToStr3(i8* %76, i32 128, i32 %80)
  %82 = mul nuw i64 4, %10
  %83 = trunc i64 %82 to i32
  %84 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %86 = call i32 @UniFormat(i32* %12, i32 %83, i32 %84, i8* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %89 = call i32 @CtInsert(i32* %87, i32 %88, i32* %12)
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ToStr3(i8* %90, i32 128, i32 %94)
  %96 = mul nuw i64 4, %10
  %97 = trunc i64 %96 to i32
  %98 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %100 = call i32 @UniFormat(i32* %12, i32 %97, i32 %98, i8* %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 @CtInsert(i32* %101, i32 %102, i32* %12)
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ToStr3(i8* %104, i32 128, i32 %108)
  %110 = mul nuw i64 4, %10
  %111 = trunc i64 %110 to i32
  %112 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %113 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %114 = call i32 @UniFormat(i32* %12, i32 %111, i32 %112, i8* %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %117 = call i32 @CtInsert(i32* %115, i32 %116, i32* %12)
  %118 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ToStr3(i8* %118, i32 128, i32 %122)
  %124 = mul nuw i64 4, %10
  %125 = trunc i64 %124 to i32
  %126 = call i32 @_UU(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %127 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %128 = call i32 @UniFormat(i32* %12, i32 %125, i32 %126, i8* %127)
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %131 = call i32 @CtInsert(i32* %129, i32 %130, i32* %12)
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %19, %18
  %133 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %8, align 4
  switch i32 %134, label %136 [
    i32 0, label %135
    i32 1, label %135
  ]

135:                                              ; preds = %132, %132
  ret void

136:                                              ; preds = %132
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ToStr3(i8*, i32, i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i32, i8*) #2

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32 @CtInsert(i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
