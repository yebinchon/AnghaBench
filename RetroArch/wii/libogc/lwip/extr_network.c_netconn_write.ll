; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i64, i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.api_msg = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.netconn* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i8* }

@API_LIB_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"netconn_write(%d)\0A\00", align 1
@ERR_VAL = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@MEMP_API_MSG = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i64 0, align 8
@APIMSG_WRITE = common dso_local global i32 0, align 4
@NETCONN_WRITE = common dso_local global i32 0, align 4
@NETCONN_TCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"netconn_write: tcp_sndbuf = 0,err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"netconn_write: writing %d bytes (%d)\0A\00", align 1
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"netconn_write: %d bytes written\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"netconn_write: mem err\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"netconn_write: err = %d\0A\00", align 1
@NETCONN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.netconn*, i8*, i64, i32)* @netconn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netconn_write(%struct.netconn* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.netconn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.api_msg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.netconn* %0, %struct.netconn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* @API_LIB_DEBUG, align 4
  %15 = load %struct.netconn*, %struct.netconn** %6, align 8
  %16 = getelementptr inbounds %struct.netconn, %struct.netconn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @LWIP_DEBUGF(i32 %14, i8* %18)
  %20 = load %struct.netconn*, %struct.netconn** %6, align 8
  %21 = icmp eq %struct.netconn* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @ERR_VAL, align 8
  store i64 %23, i64* %5, align 8
  br label %192

24:                                               ; preds = %4
  %25 = load %struct.netconn*, %struct.netconn** %6, align 8
  %26 = getelementptr inbounds %struct.netconn, %struct.netconn* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ERR_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.netconn*, %struct.netconn** %6, align 8
  %32 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  br label %192

34:                                               ; preds = %24
  %35 = load i32, i32* @MEMP_API_MSG, align 4
  %36 = call %struct.api_msg* @memp_malloc(i32 %35)
  store %struct.api_msg* %36, %struct.api_msg** %11, align 8
  %37 = icmp eq %struct.api_msg* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* @ERR_MEM, align 8
  %40 = load %struct.netconn*, %struct.netconn** %6, align 8
  %41 = getelementptr inbounds %struct.netconn, %struct.netconn* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i64 %39, i64* %5, align 8
  br label %192

42:                                               ; preds = %34
  %43 = load i32, i32* @APIMSG_WRITE, align 4
  %44 = load %struct.api_msg*, %struct.api_msg** %11, align 8
  %45 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.netconn*, %struct.netconn** %6, align 8
  %47 = load %struct.api_msg*, %struct.api_msg** %11, align 8
  %48 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store %struct.netconn* %46, %struct.netconn** %49, align 8
  %50 = load i32, i32* @NETCONN_WRITE, align 4
  %51 = load %struct.netconn*, %struct.netconn** %6, align 8
  %52 = getelementptr inbounds %struct.netconn, %struct.netconn* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %180, %42
  %54 = load %struct.netconn*, %struct.netconn** %6, align 8
  %55 = getelementptr inbounds %struct.netconn, %struct.netconn* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ERR_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %60, 0
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i1 [ false, %53 ], [ %61, %59 ]
  br i1 %63, label %64, label %181

64:                                               ; preds = %62
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.api_msg*, %struct.api_msg** %11, align 8
  %67 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i8* %65, i8** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.api_msg*, %struct.api_msg** %11, align 8
  %73 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 8
  %77 = load %struct.netconn*, %struct.netconn** %6, align 8
  %78 = getelementptr inbounds %struct.netconn, %struct.netconn* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NETCONN_TCP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %107, %82
  %84 = load %struct.netconn*, %struct.netconn** %6, align 8
  %85 = getelementptr inbounds %struct.netconn, %struct.netconn* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @tcp_sndbuf(i32 %87)
  store i64 %88, i64* %13, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %83
  %91 = load i32, i32* @API_LIB_DEBUG, align 4
  %92 = load %struct.netconn*, %struct.netconn** %6, align 8
  %93 = getelementptr inbounds %struct.netconn, %struct.netconn* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @LWIP_DEBUGF(i32 %91, i8* %95)
  %97 = load %struct.netconn*, %struct.netconn** %6, align 8
  %98 = getelementptr inbounds %struct.netconn, %struct.netconn* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @LWP_SemWait(i32 %99)
  %101 = load %struct.netconn*, %struct.netconn** %6, align 8
  %102 = getelementptr inbounds %struct.netconn, %struct.netconn* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ERR_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %90
  br label %182

107:                                              ; preds = %90
  br label %83

108:                                              ; preds = %83
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %13, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64, i64* %13, align 8
  store i64 %113, i64* %12, align 8
  br label %116

114:                                              ; preds = %108
  %115 = load i64, i64* %8, align 8
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %114, %112
  br label %119

117:                                              ; preds = %64
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %12, align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i32, i32* @API_LIB_DEBUG, align 4
  %121 = load i64, i64* %12, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @LWIP_DEBUGF(i32 %120, i8* %124)
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.api_msg*, %struct.api_msg** %11, align 8
  %128 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i64 %126, i64* %131, align 8
  %132 = load %struct.api_msg*, %struct.api_msg** %11, align 8
  %133 = call i32 @apimsg_post(%struct.api_msg* %132)
  %134 = load %struct.netconn*, %struct.netconn** %6, align 8
  %135 = getelementptr inbounds %struct.netconn, %struct.netconn* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = ptrtoint i64* %10 to i32
  %138 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %139 = call i32 @MQ_Receive(i32 %136, i32 %137, i32 %138)
  %140 = load %struct.netconn*, %struct.netconn** %6, align 8
  %141 = getelementptr inbounds %struct.netconn, %struct.netconn* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ERR_OK, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %119
  %146 = load i32, i32* @API_LIB_DEBUG, align 4
  %147 = load i64, i64* %12, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @LWIP_DEBUGF(i32 %146, i8* %148)
  %150 = load i8*, i8** %7, align 8
  %151 = load i64, i64* %12, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %7, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %8, align 8
  %155 = sub nsw i64 %154, %153
  store i64 %155, i64* %8, align 8
  br label %180

156:                                              ; preds = %119
  %157 = load %struct.netconn*, %struct.netconn** %6, align 8
  %158 = getelementptr inbounds %struct.netconn, %struct.netconn* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @ERR_MEM, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %156
  %163 = load i32, i32* @API_LIB_DEBUG, align 4
  %164 = call i32 @LWIP_DEBUGF(i32 %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i64, i64* @ERR_OK, align 8
  %166 = load %struct.netconn*, %struct.netconn** %6, align 8
  %167 = getelementptr inbounds %struct.netconn, %struct.netconn* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.netconn*, %struct.netconn** %6, align 8
  %169 = getelementptr inbounds %struct.netconn, %struct.netconn* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @LWP_SemWait(i32 %170)
  br label %179

172:                                              ; preds = %156
  %173 = load i32, i32* @API_LIB_DEBUG, align 4
  %174 = load %struct.netconn*, %struct.netconn** %6, align 8
  %175 = getelementptr inbounds %struct.netconn, %struct.netconn* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @LWIP_DEBUGF(i32 %173, i8* %177)
  br label %181

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %145
  br label %53

181:                                              ; preds = %172, %62
  br label %182

182:                                              ; preds = %181, %106
  %183 = load i32, i32* @MEMP_API_MSG, align 4
  %184 = load %struct.api_msg*, %struct.api_msg** %11, align 8
  %185 = call i32 @memp_free(i32 %183, %struct.api_msg* %184)
  %186 = load i32, i32* @NETCONN_NONE, align 4
  %187 = load %struct.netconn*, %struct.netconn** %6, align 8
  %188 = getelementptr inbounds %struct.netconn, %struct.netconn* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.netconn*, %struct.netconn** %6, align 8
  %190 = getelementptr inbounds %struct.netconn, %struct.netconn* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %5, align 8
  br label %192

192:                                              ; preds = %182, %38, %30, %22
  %193 = load i64, i64* %5, align 8
  ret i64 %193
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.api_msg* @memp_malloc(i32) #1

declare dso_local i64 @tcp_sndbuf(i32) #1

declare dso_local i32 @LWP_SemWait(i32) #1

declare dso_local i32 @apimsg_post(%struct.api_msg*) #1

declare dso_local i32 @MQ_Receive(i32, i32, i32) #1

declare dso_local i32 @memp_free(i32, %struct.api_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
