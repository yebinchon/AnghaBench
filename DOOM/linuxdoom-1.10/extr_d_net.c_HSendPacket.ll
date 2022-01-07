; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_HSendPacket.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_HSendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@netbuffer = common dso_local global %struct.TYPE_4__* null, align 8
@reboundstore = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@reboundpacket = common dso_local global i32 0, align 4
@demoplayback = common dso_local global i64 0, align 8
@netgame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Tried to transmit to another node\00", align 1
@CMD_SEND = common dso_local global i32 0, align 4
@doomcom = common dso_local global %struct.TYPE_5__* null, align 8
@debugfile = common dso_local global i64 0, align 8
@NCMD_RETRANSMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"send (%i + %i, R %i) [%i] \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HSendPacket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @NetbufferChecksum()
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_4__* @reboundstore to i8*), i8* align 4 %16, i64 16, i1 false)
  store i32 1, i32* @reboundpacket, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load i64, i64* @demoplayback, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %88

21:                                               ; preds = %17
  %22 = load i32, i32* @netgame, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @I_Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* @CMD_SEND, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = call i32 (...) @NetbufferSize()
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* @debugfile, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %26
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NCMD_RETRANSMIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ExpandTics(i32 %48)
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i64, i64* @debugfile, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ExpandTics(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i64, i8*, ...) @fprintf(i64 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i32 %60, i32 %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %80, %51
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load i64, i64* @debugfile, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %74 = bitcast %struct.TYPE_4__* %73 to i32*
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i64, i8*, ...) @fprintf(i64 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i64, i64* @debugfile, align 8
  %85 = call i32 (i64, i8*, ...) @fprintf(i64 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %26
  %87 = call i32 (...) @I_NetCmd()
  br label %88

88:                                               ; preds = %86, %20, %14
  ret void
}

declare dso_local i32 @NetbufferChecksum(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @NetbufferSize(...) #1

declare dso_local i32 @ExpandTics(i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @I_NetCmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
