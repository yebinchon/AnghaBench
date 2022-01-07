; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_sendtftp.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_sendtftp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, %struct.tftphdr }
%struct.tftphdr = type { i64, i16 }
%struct.testcase = type { i32 }
%struct.formats = type { i32 }

@ackbuf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@opcode_DATA = common dso_local global i64 0, align 8
@timeout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Pausing %d seconds before %d bytes\00", align 1
@peer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@got_exit_signal = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"read: fail\00", align 1
@opcode_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"got ERROR\00", align 1
@opcode_ACK = common dso_local global i64 0, align 8
@SEGSIZE = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@rexmtval = common dso_local global i32 0, align 4
@timeoutbuf = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.testcase*, %struct.formats*)* @sendtftp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendtftp(%struct.testcase* %0, %struct.formats* %1) #0 {
  %3 = alloca %struct.testcase*, align 8
  %4 = alloca %struct.formats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.tftphdr*, align 8
  %9 = alloca %struct.tftphdr*, align 8
  store %struct.testcase* %0, %struct.testcase** %3, align 8
  store %struct.formats* %1, %struct.formats** %4, align 8
  %10 = call %struct.tftphdr* (...) @r_init()
  store volatile %struct.tftphdr* %10, %struct.tftphdr** %8, align 8
  store %struct.tftphdr* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ackbuf, i32 0, i32 1), %struct.tftphdr** %9, align 8
  store volatile i16 1, i16* %7, align 2
  br label %11

11:                                               ; preds = %120, %2
  %12 = load %struct.testcase*, %struct.testcase** %3, align 8
  %13 = load %struct.formats*, %struct.formats** %4, align 8
  %14 = getelementptr inbounds %struct.formats, %struct.formats* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readit(%struct.testcase* %12, %struct.tftphdr** %8, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i64, i64* @errno, align 8
  %21 = add nsw i64 %20, 100
  %22 = call i32 @nak(i64 %21)
  br label %124

23:                                               ; preds = %11
  %24 = load i64, i64* @opcode_DATA, align 8
  %25 = trunc i64 %24 to i16
  %26 = call i8* @htons(i16 zeroext %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %29 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load volatile i16, i16* %7, align 2
  %31 = call i8* @htons(i16 zeroext %30)
  %32 = ptrtoint i8* %31 to i16
  %33 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %34 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %33, i32 0, i32 1
  store i16 %32, i16* %34, align 8
  store i64 0, i64* @timeout, align 8
  %35 = load %struct.testcase*, %struct.testcase** %3, align 8
  %36 = getelementptr inbounds %struct.testcase, %struct.testcase* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %23
  %40 = load %struct.testcase*, %struct.testcase** %3, align 8
  %41 = getelementptr inbounds %struct.testcase, %struct.testcase* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.testcase*, %struct.testcase** %3, align 8
  %46 = getelementptr inbounds %struct.testcase, %struct.testcase* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 1000, %47
  %49 = call i32 @wait_ms(i32 %48)
  br label %50

50:                                               ; preds = %39, %23
  br label %51

51:                                               ; preds = %114, %50
  %52 = load i32, i32* @peer, align 4
  %53 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 4
  %56 = call i32 @swrite(i32 %52, %struct.tftphdr* %53, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 4
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %124

62:                                               ; preds = %51
  %63 = load %struct.testcase*, %struct.testcase** %3, align 8
  %64 = load %struct.formats*, %struct.formats** %4, align 8
  %65 = getelementptr inbounds %struct.formats, %struct.formats* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @read_ahead(%struct.testcase* %63, i32 %66)
  br label %68

68:                                               ; preds = %116, %62
  %69 = load i32, i32* @peer, align 4
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ackbuf, i32 0, i32 0), align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i64 @sread(i32 %69, i32* %71, i32 8)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* @got_exit_signal, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %124

76:                                               ; preds = %68
  %77 = load i64, i64* %6, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %124

81:                                               ; preds = %76
  %82 = load i64, i64* getelementptr inbounds (%struct.tftphdr, %struct.tftphdr* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_2__* @ackbuf to i8*), i64 8) to %struct.tftphdr*), i32 0, i32 0), align 8
  %83 = trunc i64 %82 to i16
  %84 = call i8* @ntohs(i16 zeroext %83)
  %85 = ptrtoint i8* %84 to i64
  store i64 %85, i64* getelementptr inbounds (%struct.tftphdr, %struct.tftphdr* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_2__* @ackbuf to i8*), i64 8) to %struct.tftphdr*), i32 0, i32 0), align 8
  %86 = load i16, i16* getelementptr inbounds (%struct.tftphdr, %struct.tftphdr* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_2__* @ackbuf to i8*), i64 8) to %struct.tftphdr*), i32 0, i32 1), align 8
  %87 = call i8* @ntohs(i16 zeroext %86)
  %88 = ptrtoint i8* %87 to i16
  store i16 %88, i16* getelementptr inbounds (%struct.tftphdr, %struct.tftphdr* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_2__* @ackbuf to i8*), i64 8) to %struct.tftphdr*), i32 0, i32 1), align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.tftphdr, %struct.tftphdr* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_2__* @ackbuf to i8*), i64 8) to %struct.tftphdr*), i32 0, i32 0), align 8
  %90 = load i64, i64* @opcode_ERROR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %124

94:                                               ; preds = %81
  %95 = load i64, i64* getelementptr inbounds (%struct.tftphdr, %struct.tftphdr* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_2__* @ackbuf to i8*), i64 8) to %struct.tftphdr*), i32 0, i32 0), align 8
  %96 = load i64, i64* @opcode_ACK, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load i16, i16* getelementptr inbounds (%struct.tftphdr, %struct.tftphdr* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_2__* @ackbuf to i8*), i64 8) to %struct.tftphdr*), i32 0, i32 1), align 8
  %100 = zext i16 %99 to i32
  %101 = load volatile i16, i16* %7, align 2
  %102 = zext i16 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %117

105:                                              ; preds = %98
  %106 = load i32, i32* @peer, align 4
  %107 = call i32 @synchnet(i32 %106)
  %108 = load i16, i16* getelementptr inbounds (%struct.tftphdr, %struct.tftphdr* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_2__* @ackbuf to i8*), i64 8) to %struct.tftphdr*), i32 0, i32 1), align 8
  %109 = zext i16 %108 to i32
  %110 = load volatile i16, i16* %7, align 2
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 %111, 1
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %51

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %94
  br label %68

117:                                              ; preds = %104
  %118 = load volatile i16, i16* %7, align 2
  %119 = add i16 %118, 1
  store volatile i16 %119, i16* %7, align 2
  br label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @SEGSIZE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %11, label %124

124:                                              ; preds = %19, %60, %75, %79, %92, %120
  ret void
}

declare dso_local %struct.tftphdr* @r_init(...) #1

declare dso_local i32 @readit(%struct.testcase*, %struct.tftphdr**, i32) #1

declare dso_local i32 @nak(i64) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @swrite(i32, %struct.tftphdr*, i32) #1

declare dso_local i32 @read_ahead(%struct.testcase*, i32) #1

declare dso_local i64 @sread(i32, i32*, i32) #1

declare dso_local i8* @ntohs(i16 zeroext) #1

declare dso_local i32 @synchnet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
