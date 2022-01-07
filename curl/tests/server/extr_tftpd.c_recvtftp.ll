; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_recvtftp.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_recvtftp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.tftphdr }
%struct.tftphdr = type { i64, i16 }
%struct.TYPE_3__ = type { %struct.tftphdr* }
%struct.testcase = type { i32 }
%struct.formats = type { i32 }

@ackbuf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@timeout = common dso_local global i64 0, align 8
@opcode_ACK = common dso_local global i64 0, align 8
@peer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"write: fail\0A\00", align 1
@PKTSIZE = common dso_local global i32 0, align 4
@got_exit_signal = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"read: fail\0A\00", align 1
@opcode_ERROR = common dso_local global i64 0, align 8
@opcode_DATA = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOSPACE = common dso_local global i64 0, align 8
@SEGSIZE = common dso_local global i64 0, align 8
@buf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SIGALRM = common dso_local global i32 0, align 4
@justtimeout = common dso_local global i32 0, align 4
@rexmtval = common dso_local global i32 0, align 4
@timeoutbuf = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.testcase*, %struct.formats*)* @recvtftp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recvtftp(%struct.testcase* %0, %struct.formats* %1) #0 {
  %3 = alloca %struct.testcase*, align 8
  %4 = alloca %struct.formats*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.tftphdr*, align 8
  %9 = alloca %struct.tftphdr*, align 8
  store %struct.testcase* %0, %struct.testcase** %3, align 8
  store %struct.formats* %1, %struct.formats** %4, align 8
  store volatile i16 0, i16* %7, align 2
  %10 = call %struct.tftphdr* (...) @w_init()
  store volatile %struct.tftphdr* %10, %struct.tftphdr** %8, align 8
  store %struct.tftphdr* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ackbuf, i32 0, i32 1), %struct.tftphdr** %9, align 8
  br label %11

11:                                               ; preds = %128, %2
  store i64 0, i64* @timeout, align 8
  %12 = load i64, i64* @opcode_ACK, align 8
  %13 = trunc i64 %12 to i16
  %14 = call i8* @htons(i16 zeroext %13)
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %17 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load volatile i16, i16* %7, align 2
  %19 = call i8* @htons(i16 zeroext %18)
  %20 = ptrtoint i8* %19 to i16
  %21 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %22 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %21, i32 0, i32 1
  store i16 %20, i16* %22, align 8
  %23 = load volatile i16, i16* %7, align 2
  %24 = add i16 %23, 1
  store volatile i16 %24, i16* %7, align 2
  br label %25

25:                                               ; preds = %100, %11
  %26 = load i32, i32* @peer, align 4
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ackbuf, i32 0, i32 0), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @swrite(i32 %26, i32* %28, i32 4)
  %30 = icmp ne i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @logmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %183

33:                                               ; preds = %25
  %34 = load %struct.testcase*, %struct.testcase** %3, align 8
  %35 = load %struct.formats*, %struct.formats** %4, align 8
  %36 = getelementptr inbounds %struct.formats, %struct.formats* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @write_behind(%struct.testcase* %34, i32 %37)
  br label %39

39:                                               ; preds = %102, %33
  %40 = load i32, i32* @peer, align 4
  %41 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %42 = load i32, i32* @PKTSIZE, align 4
  %43 = call i64 @sread(i32 %40, %struct.tftphdr* %41, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* @got_exit_signal, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %183

47:                                               ; preds = %39
  %48 = load i64, i64* %5, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @logmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %183

52:                                               ; preds = %47
  %53 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %54 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i16
  %57 = call i8* @ntohs(i16 zeroext %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %60 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %62 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %61, i32 0, i32 1
  %63 = load i16, i16* %62, align 8
  %64 = call i8* @ntohs(i16 zeroext %63)
  %65 = ptrtoint i8* %64 to i16
  %66 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %67 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %66, i32 0, i32 1
  store i16 %65, i16* %67, align 8
  %68 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %69 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @opcode_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %183

74:                                               ; preds = %52
  %75 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %76 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @opcode_DATA, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %74
  %81 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %82 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %81, i32 0, i32 1
  %83 = load i16, i16* %82, align 8
  %84 = zext i16 %83 to i32
  %85 = load volatile i16, i16* %7, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %103

89:                                               ; preds = %80
  %90 = load i32, i32* @peer, align 4
  %91 = call i32 @synchnet(i32 %90)
  %92 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %93 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %92, i32 0, i32 1
  %94 = load i16, i16* %93, align 8
  %95 = zext i16 %94 to i32
  %96 = load volatile i16, i16* %7, align 2
  %97 = zext i16 %96 to i32
  %98 = sub nsw i32 %97, 1
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %25

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %74
  br label %39

103:                                              ; preds = %88
  %104 = load %struct.testcase*, %struct.testcase** %3, align 8
  %105 = load i64, i64* %5, align 8
  %106 = sub nsw i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = load %struct.formats*, %struct.formats** %4, align 8
  %109 = getelementptr inbounds %struct.formats, %struct.formats* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @writeit(%struct.testcase* %104, %struct.tftphdr** %8, i32 %107, i32 %110)
  store i64 %111, i64* %6, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %5, align 8
  %114 = sub nsw i64 %113, 4
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %103
  %117 = load i64, i64* %6, align 8
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i64, i64* @errno, align 8
  %121 = add nsw i64 %120, 100
  %122 = call i32 @nak(i64 %121)
  br label %126

123:                                              ; preds = %116
  %124 = load i64, i64* @ENOSPACE, align 8
  %125 = call i32 @nak(i64 %124)
  br label %126

126:                                              ; preds = %123, %119
  br label %183

127:                                              ; preds = %103
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @SEGSIZE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %11, label %132

132:                                              ; preds = %128
  %133 = load %struct.testcase*, %struct.testcase** %3, align 8
  %134 = load %struct.formats*, %struct.formats** %4, align 8
  %135 = getelementptr inbounds %struct.formats, %struct.formats* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @write_behind(%struct.testcase* %133, i32 %136)
  %138 = load i64, i64* @opcode_ACK, align 8
  %139 = trunc i64 %138 to i16
  %140 = call i8* @htons(i16 zeroext %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %143 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load volatile i16, i16* %7, align 2
  %145 = call i8* @htons(i16 zeroext %144)
  %146 = ptrtoint i8* %145 to i16
  %147 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %148 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %147, i32 0, i32 1
  store i16 %146, i16* %148, align 8
  %149 = load i32, i32* @peer, align 4
  %150 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ackbuf, i32 0, i32 0), align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = call i32 @swrite(i32 %149, i32* %151, i32 4)
  %153 = load i32, i32* @peer, align 4
  %154 = load %struct.tftphdr*, %struct.tftphdr** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @buf, i32 0, i32 0), align 8
  %155 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %154, i64 0
  %156 = call i64 @sread(i32 %153, %struct.tftphdr* %155, i32 8)
  store i64 %156, i64* %5, align 8
  %157 = load i64, i64* @got_exit_signal, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %132
  br label %183

160:                                              ; preds = %132
  %161 = load i64, i64* %5, align 8
  %162 = icmp sge i64 %161, 4
  br i1 %162, label %163, label %182

163:                                              ; preds = %160
  %164 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %165 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @opcode_DATA, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %163
  %170 = load volatile i16, i16* %7, align 2
  %171 = zext i16 %170 to i32
  %172 = load volatile %struct.tftphdr*, %struct.tftphdr** %8, align 8
  %173 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %172, i32 0, i32 1
  %174 = load i16, i16* %173, align 8
  %175 = zext i16 %174 to i32
  %176 = icmp eq i32 %171, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %169
  %178 = load i32, i32* @peer, align 4
  %179 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ackbuf, i32 0, i32 0), align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = call i32 @swrite(i32 %178, i32* %180, i32 4)
  br label %182

182:                                              ; preds = %177, %169, %163, %160
  br label %183

183:                                              ; preds = %182, %159, %126, %73, %50, %46, %31
  ret void
}

declare dso_local %struct.tftphdr* @w_init(...) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @swrite(i32, i32*, i32) #1

declare dso_local i32 @logmsg(i8*) #1

declare dso_local i32 @write_behind(%struct.testcase*, i32) #1

declare dso_local i64 @sread(i32, %struct.tftphdr*, i32) #1

declare dso_local i8* @ntohs(i16 zeroext) #1

declare dso_local i32 @synchnet(i32) #1

declare dso_local i64 @writeit(%struct.testcase*, %struct.tftphdr**, i32, i32) #1

declare dso_local i32 @nak(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
