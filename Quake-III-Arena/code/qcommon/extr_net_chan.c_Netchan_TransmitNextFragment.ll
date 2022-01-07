; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_net_chan.c_Netchan_TransmitNextFragment.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_net_chan.c_Netchan_TransmitNextFragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@MAX_PACKETLEN = common dso_local global i32 0, align 4
@FRAGMENT_BIT = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i64 0, align 8
@qport = common dso_local global %struct.TYPE_13__* null, align 8
@FRAGMENT_SIZE = common dso_local global i32 0, align 4
@showpackets = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s send %4i : s=%i fragment=%i,%i\0A\00", align 1
@netsrcString = common dso_local global i32* null, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Netchan_TransmitNextFragment(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load i32, i32* @MAX_PACKETLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = mul nuw i64 4, %8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @MSG_InitOOB(%struct.TYPE_11__* %3, i32* %10, i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FRAGMENT_BIT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @MSG_WriteLong(%struct.TYPE_11__* %3, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NS_CLIENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @qport, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MSG_WriteShort(%struct.TYPE_11__* %3, i32 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load i32, i32* @FRAGMENT_SIZE, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %42, %30
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @MSG_WriteShort(%struct.TYPE_11__* %3, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @MSG_WriteShort(%struct.TYPE_11__* %3, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @MSG_WriteData(%struct.TYPE_11__* %3, i32 %67, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @NET_SendPacket(i64 %72, i32 %74, i32 %76, i32 %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @showpackets, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %51
  %86 = load i32*, i32** @netsrcString, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %93, i32 %96, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %85, %51
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %103
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @FRAGMENT_SIZE, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* @qfalse, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %121, %117, %103
  %130 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %130)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSG_InitOOB(%struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @MSG_WriteLong(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @MSG_WriteShort(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @MSG_WriteData(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @NET_SendPacket(i64, i32, i32, i32) #2

declare dso_local i32 @Com_Printf(i8*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
