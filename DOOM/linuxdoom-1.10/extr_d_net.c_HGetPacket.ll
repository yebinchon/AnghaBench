; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_HGetPacket.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_HGetPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@reboundpacket = common dso_local global i32 0, align 4
@netbuffer = common dso_local global %struct.TYPE_4__* null, align 8
@reboundstore = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@doomcom = common dso_local global %struct.TYPE_5__* null, align 8
@netgame = common dso_local global i32 0, align 4
@demoplayback = common dso_local global i64 0, align 8
@CMD_GET = common dso_local global i32 0, align 4
@debugfile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"bad packet length %i\0A\00", align 1
@NCMD_CHECKSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bad packet checksum\0A\00", align 1
@NCMD_SETUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"setup packet\0A\00", align 1
@NCMD_RETRANSMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"get %i = (%i + %i, R %i)[%i] \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HGetPacket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @reboundpacket, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %8 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_4__* @reboundstore to i8*), i64 16, i1 false)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  store i32 0, i32* @reboundpacket, align 4
  store i32 1, i32* %1, align 4
  br label %126

11:                                               ; preds = %0
  %12 = load i32, i32* @netgame, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %126

15:                                               ; preds = %11
  %16 = load i64, i64* @demoplayback, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %126

19:                                               ; preds = %15
  %20 = load i32, i32* @CMD_GET, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = call i32 (...) @I_NetCmd()
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %126

29:                                               ; preds = %19
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (...) @NetbufferSize()
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i64, i64* @debugfile, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* @debugfile, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i64, i8*, ...) @fprintf(i64 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  store i32 0, i32* %1, align 4
  br label %126

45:                                               ; preds = %29
  %46 = call i32 (...) @NetbufferChecksum()
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NCMD_CHECKSUM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %46, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i64, i64* @debugfile, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* @debugfile, align 8
  %58 = call i32 (i64, i8*, ...) @fprintf(i64 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* %1, align 4
  br label %126

60:                                               ; preds = %45
  %61 = load i64, i64* @debugfile, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %125

63:                                               ; preds = %60
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NCMD_SETUP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, i64* @debugfile, align 8
  %72 = call i32 (i64, i8*, ...) @fprintf(i64 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %124

73:                                               ; preds = %63
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NCMD_RETRANSMIT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ExpandTics(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %73
  store i32 -1, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i64, i64* @debugfile, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ExpandTics(i32 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %2, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i64, i8*, ...) @fprintf(i64 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %94, i32 %97, i32 %98, i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %118, %86
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @doomcom, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load i64, i64* @debugfile, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @netbuffer, align 8
  %112 = bitcast %struct.TYPE_4__* %111 to i32*
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i64, i8*, ...) @fprintf(i64 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %103

121:                                              ; preds = %103
  %122 = load i64, i64* @debugfile, align 8
  %123 = call i32 (i64, i8*, ...) @fprintf(i64 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %70
  br label %125

125:                                              ; preds = %124, %60
  store i32 1, i32* %1, align 4
  br label %126

126:                                              ; preds = %125, %59, %44, %28, %18, %14, %6
  %127 = load i32, i32* %1, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @I_NetCmd(...) #2

declare dso_local i32 @NetbufferSize(...) #2

declare dso_local i32 @fprintf(i64, i8*, ...) #2

declare dso_local i32 @NetbufferChecksum(...) #2

declare dso_local i32 @ExpandTics(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
