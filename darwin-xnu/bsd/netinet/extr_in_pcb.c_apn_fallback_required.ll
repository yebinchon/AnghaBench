; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_apn_fallback_required.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_apn_fallback_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.socket = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_storage = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.rtentry = type { i32 }
%struct.stat64 = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.sockaddr = type { i32 }

@apn_fallbk_enabled = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@kernproc = common dso_local global %struct.TYPE_13__* null, align 8
@SO_NOAPNFALLBK = common dso_local global i32 0, align 4
@last_apn_fallback = common dso_local global i64 0, align 8
@APN_FALLBACK_NOTIF_INTERVAL = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"APN fallback notification throttled.\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"APN fallback notification could not find unscoped default IPv6 route.\0A\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"APN fallback notification could not find unscoped default IPv6 route through cellular interface.\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"APN fallback notification found unscoped IPv4 default route!\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"com.apple.\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Abort: APN fallback notification found first-party bundle ID \22%s\22!\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@apn_fallback_required.ipv6_start_date = internal constant i64 1464764400, align 8
@.str.7 = private unnamed_addr constant [112 x i8] c"Abort: APN fallback notification found binary too recent! (err %d atime %ld mtime %ld ctime %ld birthtime %ld)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.socket*, %struct.sockaddr_in*)* @apn_fallback_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @apn_fallback_required(%struct.TYPE_13__* %0, %struct.socket* %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_storage, align 8
  %10 = alloca %struct.rtentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  store %struct.rtentry* null, %struct.rtentry** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load i64, i64* @apn_fallbk_enabled, align 8
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %4, align 8
  br label %179

24:                                               ; preds = %3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kernproc, align 8
  %27 = icmp eq %struct.TYPE_13__* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %4, align 8
  br label %179

30:                                               ; preds = %24
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = icmp ne %struct.socket* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.socket*, %struct.socket** %6, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SO_NOAPNFALLBK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %179

42:                                               ; preds = %33, %30
  %43 = call i64 (...) @net_uptime()
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @last_apn_fallback, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load i64, i64* @APN_FALLBACK_NOTIF_INTERVAL, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @LOG_INFO, align 4
  %51 = call i32 @apn_fallbk_log(i32 ptrtoint ([38 x i8]* @.str to i32))
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %4, align 8
  br label %179

53:                                               ; preds = %42
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %55 = icmp ne %struct.sockaddr_in* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %58 = call i64 @APN_FALLBACK_IP_FILTER(%struct.sockaddr_in* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %4, align 8
  br label %179

62:                                               ; preds = %56, %53
  %63 = bitcast %struct.sockaddr_storage* %9 to %struct.stat64*
  %64 = call i32 @bzero(%struct.stat64* %63, i32 40)
  %65 = load i32, i32* @AF_INET6, align 4
  %66 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 5
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i32 4, i32* %67, align 8
  %68 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %69 = call %struct.rtentry* @rtalloc1(%struct.sockaddr* %68, i32 0, i32 0)
  store %struct.rtentry* %69, %struct.rtentry** %10, align 8
  %70 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %71 = icmp eq %struct.rtentry* null, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i32, i32* @LOG_INFO, align 4
  %74 = call i32 @apn_fallbk_log(i32 ptrtoint ([71 x i8]* @.str.1 to i32))
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %4, align 8
  br label %179

76:                                               ; preds = %62
  %77 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %78 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IFNET_IS_CELLULAR(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %84 = call i32 @rtfree(%struct.rtentry* %83)
  %85 = load i32, i32* @LOG_INFO, align 4
  %86 = call i32 @apn_fallbk_log(i32 ptrtoint ([98 x i8]* @.str.2 to i32))
  %87 = load i64, i64* @FALSE, align 8
  store i64 %87, i64* %4, align 8
  br label %179

88:                                               ; preds = %76
  %89 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %90 = call i32 @rtfree(%struct.rtentry* %89)
  store %struct.rtentry* null, %struct.rtentry** %10, align 8
  %91 = bitcast %struct.sockaddr_storage* %9 to %struct.stat64*
  %92 = call i32 @bzero(%struct.stat64* %91, i32 40)
  %93 = load i32, i32* @AF_INET, align 4
  %94 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 5
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i32 4, i32* %95, align 8
  %96 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %97 = call %struct.rtentry* @rtalloc1(%struct.sockaddr* %96, i32 0, i32 0)
  store %struct.rtentry* %97, %struct.rtentry** %10, align 8
  %98 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %99 = icmp ne %struct.rtentry* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %102 = call i32 @rtfree(%struct.rtentry* %101)
  store %struct.rtentry* null, %struct.rtentry** %10, align 8
  %103 = load i32, i32* @LOG_INFO, align 4
  %104 = call i32 @apn_fallbk_log(i32 ptrtoint ([62 x i8]* @.str.3 to i32))
  %105 = load i64, i64* @FALSE, align 8
  store i64 %105, i64* %4, align 8
  br label %179

106:                                              ; preds = %88
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = call i8* @cs_identity_get(%struct.TYPE_13__* %107)
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** %11, align 8
  %119 = call i32* @strchr(i8* %118, i8 signext 46)
  %120 = icmp eq i32* %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %11, align 8
  %123 = call i64 @strncmp(i8* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %121, %117, %111, %106
  %126 = load i32, i32* @LOG_INFO, align 4
  %127 = load i8*, i8** %11, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i8*, i8** %11, align 8
  br label %132

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i8* [ %130, %129 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %131 ]
  %134 = ptrtoint i8* %133 to i32
  %135 = call i32 @apn_fallbk_log(i32 %134)
  %136 = load i64, i64* @FALSE, align 8
  store i64 %136, i64* %4, align 8
  br label %179

137:                                              ; preds = %121
  %138 = call i32 @bzero(%struct.stat64* %13, i32 40)
  %139 = call i32 @vfs_context_create(i32* null)
  store i32 %139, i32* %12, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @vn_stat(i32 %142, %struct.stat64* %13, i32* null, i32 1, i32 %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @vfs_context_rele(i32 %145)
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %137
  %150 = getelementptr inbounds %struct.stat64, %struct.stat64* %13, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp sge i64 %152, 1464764400
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.stat64, %struct.stat64* %13, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sge i64 %157, 1464764400
  br i1 %158, label %159, label %177

159:                                              ; preds = %154, %149, %137
  %160 = load i32, i32* @LOG_INFO, align 4
  %161 = load i32, i32* %14, align 4
  %162 = getelementptr inbounds %struct.stat64, %struct.stat64* %13, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.stat64, %struct.stat64* %13, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.stat64, %struct.stat64* %13, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds %struct.stat64, %struct.stat64* %13, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @apn_fallbk_log(i32 %174)
  %176 = load i64, i64* @FALSE, align 8
  store i64 %176, i64* %4, align 8
  br label %179

177:                                              ; preds = %154
  %178 = load i64, i64* @TRUE, align 8
  store i64 %178, i64* %4, align 8
  br label %179

179:                                              ; preds = %177, %159, %132, %100, %82, %72, %60, %49, %40, %28, %22
  %180 = load i64, i64* %4, align 8
  ret i64 %180
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @net_uptime(...) #1

declare dso_local i32 @apn_fallbk_log(i32) #1

declare dso_local i64 @APN_FALLBACK_IP_FILTER(%struct.sockaddr_in*) #1

declare dso_local i32 @bzero(%struct.stat64*, i32) #1

declare dso_local %struct.rtentry* @rtalloc1(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @IFNET_IS_CELLULAR(i32) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local i8* @cs_identity_get(%struct.TYPE_13__*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @vfs_context_create(i32*) #1

declare dso_local i32 @vn_stat(i32, %struct.stat64*, i32*, i32, i32) #1

declare dso_local i32 @vfs_context_rele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
