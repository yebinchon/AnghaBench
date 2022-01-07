; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_recvfrom.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.netsocket = type { i32, i64, %struct.netbuf*, i32, i32 }
%struct.netbuf = type { i32 }
%struct.ip_addr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SOCKETS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"net_recvfrom(%d, %p, %d, 0x%x, ..)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ENOTSOCK = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"net_recvfrom(%d): returning EWOULDBLOCK\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"net_recvfrom(%d): buf == NULL!\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"net_recvfrom(%d): addr=\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" port=%u len=%u\0A\00", align 1
@NETCONN_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @net_recvfrom(i64 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.netsocket*, align 8
  %15 = alloca %struct.netbuf*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ip_addr*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.sockaddr_in, align 4
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* @SOCKETS_DEBUG, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @LWIP_DEBUGF(i32 %21, i8* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i64, i64* %10, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %6
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %7, align 8
  br label %192

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = call %struct.netsocket* @get_socket(i64 %38)
  store %struct.netsocket* %39, %struct.netsocket** %14, align 8
  %40 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %41 = icmp ne %struct.netsocket* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @ENOTSOCK, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %7, align 8
  br label %192

45:                                               ; preds = %37
  %46 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %47 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %46, i32 0, i32 2
  %48 = load %struct.netbuf*, %struct.netbuf** %47, align 8
  %49 = icmp ne %struct.netbuf* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %52 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %51, i32 0, i32 2
  %53 = load %struct.netbuf*, %struct.netbuf** %52, align 8
  store %struct.netbuf* %53, %struct.netbuf** %15, align 8
  br label %91

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @MSG_DONTWAIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %61 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @O_NONBLOCK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59, %54
  %67 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %68 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @SOCKETS_DEBUG, align 4
  %73 = load i64, i64* %8, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @LWIP_DEBUGF(i32 %72, i8* %74)
  %76 = load i64, i64* @EAGAIN, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %7, align 8
  br label %192

78:                                               ; preds = %66, %59
  %79 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %80 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.netbuf* @netconn_recv(i32 %81)
  store %struct.netbuf* %82, %struct.netbuf** %15, align 8
  %83 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %84 = icmp ne %struct.netbuf* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @SOCKETS_DEBUG, align 4
  %87 = load i64, i64* %8, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @LWIP_DEBUGF(i32 %86, i8* %88)
  store i64 0, i64* %7, align 8
  br label %192

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %50
  %92 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %93 = call i64 @netbuf_len(%struct.netbuf* %92)
  store i64 %93, i64* %16, align 8
  %94 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %95 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = sub nsw i64 %97, %96
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %16, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i64 0, i64* %7, align 8
  br label %192

102:                                              ; preds = %91
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %16, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* %16, align 8
  store i64 %107, i64* %17, align 8
  br label %110

108:                                              ; preds = %102
  %109 = load i64, i64* %10, align 8
  store i64 %109, i64* %17, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %115 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @netbuf_copypartial(%struct.netbuf* %111, i8* %112, i64 %113, i64 %116)
  %118 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %119 = icmp ne %struct.sockaddr* %118, null
  br i1 %119, label %120, label %162

120:                                              ; preds = %110
  %121 = load i32*, i32** %13, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %162

123:                                              ; preds = %120
  %124 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %125 = call %struct.ip_addr* @netbuf_fromaddr(%struct.netbuf* %124)
  store %struct.ip_addr* %125, %struct.ip_addr** %18, align 8
  %126 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %127 = call i64 @netbuf_fromport(%struct.netbuf* %126)
  store i64 %127, i64* %19, align 8
  %128 = call i32 @memset(%struct.sockaddr_in* %20, i32 0, i32 12)
  %129 = load i32, i32* @AF_INET, align 4
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 2
  store i32 %129, i32* %130, align 4
  %131 = load i64, i64* %19, align 8
  %132 = call i32 @htons(i64 %131)
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = load %struct.ip_addr*, %struct.ip_addr** %18, align 8
  %135 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %13, align 8
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp ugt i64 %141, 12
  br i1 %142, label %143, label %145

143:                                              ; preds = %123
  %144 = load i32*, i32** %13, align 8
  store i32 12, i32* %144, align 4
  br label %145

145:                                              ; preds = %143, %123
  %146 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @memcpy(%struct.sockaddr* %146, %struct.sockaddr_in* %20, i32 %148)
  %150 = load i32, i32* @SOCKETS_DEBUG, align 4
  %151 = load i64, i64* %8, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @LWIP_DEBUGF(i32 %150, i8* %152)
  %154 = load i32, i32* @SOCKETS_DEBUG, align 4
  %155 = load %struct.ip_addr*, %struct.ip_addr** %18, align 8
  %156 = call i32 @ip_addr_debug_print(i32 %154, %struct.ip_addr* %155)
  %157 = load i32, i32* @SOCKETS_DEBUG, align 4
  %158 = load i64, i64* %19, align 8
  %159 = load i64, i64* %17, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 @LWIP_DEBUGF(i32 %157, i8* %160)
  br label %162

162:                                              ; preds = %145, %120, %110
  %163 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %164 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @netconn_type(i32 %165)
  %167 = load i64, i64* @NETCONN_TCP, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %162
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* %17, align 8
  %172 = sub nsw i64 %170, %171
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %176 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %177 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %176, i32 0, i32 2
  store %struct.netbuf* %175, %struct.netbuf** %177, align 8
  %178 = load i64, i64* %17, align 8
  %179 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %180 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %178
  store i64 %182, i64* %180, align 8
  br label %190

183:                                              ; preds = %169, %162
  %184 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %185 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %184, i32 0, i32 2
  store %struct.netbuf* null, %struct.netbuf** %185, align 8
  %186 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %187 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %186, i32 0, i32 1
  store i64 0, i64* %187, align 8
  %188 = load %struct.netbuf*, %struct.netbuf** %15, align 8
  %189 = call i32 @netbuf_delete(%struct.netbuf* %188)
  br label %190

190:                                              ; preds = %183, %174
  %191 = load i64, i64* %17, align 8
  store i64 %191, i64* %7, align 8
  br label %192

192:                                              ; preds = %190, %101, %85, %71, %42, %34
  %193 = load i64, i64* %7, align 8
  ret i64 %193
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.netsocket* @get_socket(i64) #1

declare dso_local %struct.netbuf* @netconn_recv(i32) #1

declare dso_local i64 @netbuf_len(%struct.netbuf*) #1

declare dso_local i32 @netbuf_copypartial(%struct.netbuf*, i8*, i64, i64) #1

declare dso_local %struct.ip_addr* @netbuf_fromaddr(%struct.netbuf*) #1

declare dso_local i64 @netbuf_fromport(%struct.netbuf*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @ip_addr_debug_print(i32, %struct.ip_addr*) #1

declare dso_local i64 @netconn_type(i32) #1

declare dso_local i32 @netbuf_delete(%struct.netbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
