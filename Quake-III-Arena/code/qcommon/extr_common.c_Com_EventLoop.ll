; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_EventLoop.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_EventLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i32 0, align 4
@NS_SERVER = common dso_local global i32 0, align 4
@com_sv_running = common dso_local global %struct.TYPE_12__* null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Com_EventLoop: bad event type %i\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@com_dropsim = common dso_local global %struct.TYPE_13__* null, align 8
@Com_EventLoop.seed = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Com_EventLoop: oversize packet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_EventLoop() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = load i32, i32* @MAX_MSGLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = mul nuw i64 4, %8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @MSG_Init(%struct.TYPE_11__* %5, i32* %10, i32 %12)
  br label %14

14:                                               ; preds = %148, %118, %0
  br label %15

15:                                               ; preds = %14
  call void (%struct.TYPE_10__*, ...) @Com_GetEvent(%struct.TYPE_10__* sret %6)
  %16 = bitcast %struct.TYPE_10__* %1 to i8*
  %17 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 129
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* @NS_CLIENT, align 4
  %24 = call i64 @NET_GetLoopPacket(i32 %23, i32* %2, %struct.TYPE_11__* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @CL_PacketEvent(i32 %27, %struct.TYPE_11__* %5)
  br label %22

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i32, i32* @NS_SERVER, align 4
  %32 = call i64 @NET_GetLoopPacket(i32 %31, i32* %2, %struct.TYPE_11__* %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_sv_running, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @Com_RunAndTimeServerPacket(i32* %2, %struct.TYPE_11__* %5)
  br label %41

41:                                               ; preds = %39, %34
  br label %30

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44

46:                                               ; preds = %15
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %49 [
    i32 129, label %54
    i32 131, label %55
    i32 134, label %63
    i32 130, label %67
    i32 132, label %75
    i32 133, label %83
    i32 128, label %89
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @ERR_FATAL, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @Com_Error(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %140

54:                                               ; preds = %46
  br label %140

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CL_KeyEvent(i32 %57, i32 %59, i32 %61)
  br label %140

63:                                               ; preds = %46
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @CL_CharEvent(i32 %65)
  br label %140

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CL_MouseEvent(i32 %69, i32 %71, i32 %73)
  br label %140

75:                                               ; preds = %46
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CL_JoystickEvent(i32 %77, i32 %79, i32 %81)
  br label %140

83:                                               ; preds = %46
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @Cbuf_AddText(i8* %86)
  %88 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %140

89:                                               ; preds = %46
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_dropsim, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = call i32 @Q_random(i32* @Com_EventLoop.seed)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_dropsim, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %140

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %89
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i32*
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %2, align 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = sub i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ugt i32 %114, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %102
  %119 = call i32 @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %14

120:                                              ; preds = %102
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @Com_Memcpy(i32 %122, i32* %126, i32 %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** @com_sv_running, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %120
  %135 = call i32 @Com_RunAndTimeServerPacket(i32* %2, %struct.TYPE_11__* %5)
  br label %139

136:                                              ; preds = %120
  %137 = load i32, i32* %2, align 4
  %138 = call i32 @CL_PacketEvent(i32 %137, %struct.TYPE_11__* %5)
  br label %139

139:                                              ; preds = %136, %134
  br label %140

140:                                              ; preds = %139, %100, %83, %75, %67, %63, %55, %54, %49
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @Z_Free(i64 %146)
  br label %148

148:                                              ; preds = %144, %140
  br label %14
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSG_Init(%struct.TYPE_11__*, i32*, i32) #2

declare dso_local void @Com_GetEvent(%struct.TYPE_10__* sret, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @NET_GetLoopPacket(i32, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @CL_PacketEvent(i32, %struct.TYPE_11__*) #2

declare dso_local i32 @Com_RunAndTimeServerPacket(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @Com_Error(i32, i8*, i32) #2

declare dso_local i32 @CL_KeyEvent(i32, i32, i32) #2

declare dso_local i32 @CL_CharEvent(i32) #2

declare dso_local i32 @CL_MouseEvent(i32, i32, i32) #2

declare dso_local i32 @CL_JoystickEvent(i32, i32, i32) #2

declare dso_local i32 @Cbuf_AddText(i8*) #2

declare dso_local i32 @Q_random(i32*) #2

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32 @Com_Memcpy(i32, i32*, i32) #2

declare dso_local i32 @Z_Free(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
