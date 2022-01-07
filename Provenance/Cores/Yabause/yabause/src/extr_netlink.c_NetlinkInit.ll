; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_netlink.c_NetlinkInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_netlink.c_NetlinkInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@NetlinkArea = common dso_local global %struct.TYPE_6__* null, align 8
@CART_NONE = common dso_local global i32 0, align 4
@Cs2Area = common dso_local global %struct.TYPE_7__* null, align 8
@YAB_ERR_CANNOTINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Netlink\00", align 1
@NETLINK_BUFFER_SIZE = common dso_local global i32 0, align 4
@NL_MODEMSTATE_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1337\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NetlinkInit(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = call %struct.TYPE_6__* @malloc(i32 4)
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** @NetlinkArea, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @CART_NONE, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %13 = call i32 @YabSetError(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %134

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 18
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* @NETLINK_BUFFER_SIZE, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 17
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* @NETLINK_BUFFER_SIZE, align 4
  %26 = call i32 @memset(i8* %24, i32 0, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 14
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 15
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 16
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 13
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 10
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 11
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 12
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 8
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  %49 = load i32, i32* @NL_MODEMSTATE_COMMAND, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  store i32 0, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i32 0, i32* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 7
  store i32 96, i32* %77, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 8
  store i32 48, i32* %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 9
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 10
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  store i32 50, i32* %88, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 10
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 1000000
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %14
  %101 = load i8*, i8** %4, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %14
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sprintf(i32 %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %115

109:                                              ; preds = %100
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = call i32 @strcpy(i32 %112, i8* %113)
  br label %115

115:                                              ; preds = %109, %104
  %116 = load i8*, i8** %5, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i8*, i8** %5, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118, %115
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @sprintf(i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %133

127:                                              ; preds = %118
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NetlinkArea, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @strcpy(i32 %130, i8* %131)
  br label %133

133:                                              ; preds = %127, %122
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %8
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @YabSetError(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
