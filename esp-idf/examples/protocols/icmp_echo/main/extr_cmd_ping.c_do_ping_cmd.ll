; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/icmp_echo/main/extr_cmd_ping.c_do_ping_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/icmp_echo/main/extr_cmd_ping.c_do_ping_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_18__ = type { i8** }
%struct.TYPE_17__ = type { i64, i64* }
%struct.TYPE_16__ = type { i64, i64* }
%struct.TYPE_15__ = type { i64, i64* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_19__ = type { %struct.addrinfo, i8*, i8*, i8*, i8*, i8* }
%struct.addrinfo = type { i64, i64 }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_20__ = type { i32*, i32, i32, i32 }
%struct.sockaddr_in = type { %struct.in_addr }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@ping_args = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ping: unknown host %s\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@cmd_ping_on_ping_end = common dso_local global i32 0, align 4
@cmd_ping_on_ping_timeout = common dso_local global i32 0, align 4
@cmd_ping_on_ping_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_ping_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ping_cmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca %struct.in6_addr, align 4
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void (%struct.TYPE_19__*, ...) @ESP_PING_DEFAULT_CONFIG(%struct.TYPE_19__* sret %6)
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @arg_parse(i32 %15, i8** %16, i8** bitcast (%struct.TYPE_21__* @ping_args to i8**))
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 6), align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @arg_print_errors(i32 %21, i32 %22, i8* %25)
  store i32 1, i32* %3, align 4
  br label %155

27:                                               ; preds = %2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 5), align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 5), align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 5
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %32, %27
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 4), align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 4), align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 1000
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 4
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %47, %42
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 3), align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 3), align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 2), align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 2), align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  br label %83

83:                                               ; preds = %75, %70
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 1), align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 1), align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %88, %83
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  %97 = call i32 @memset(%struct.addrinfo* %9, i32 0, i32 16)
  %98 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 16)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 0), align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @getaddrinfo(i8* %103, i32* null, %struct.addrinfo* %9, %struct.addrinfo** %10)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ping_args, i32 0, i32 0), align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %111)
  store i32 1, i32* %3, align 4
  br label %155

113:                                              ; preds = %96
  %114 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AF_INET, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %121 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.sockaddr_in*
  %124 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %123, i32 0, i32 0
  %125 = bitcast %struct.in_addr* %11 to i8*
  %126 = bitcast %struct.in_addr* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 4, i1 false)
  %127 = call i32 @ip_2_ip4(%struct.addrinfo* %8)
  %128 = call i32 @inet_addr_to_ip4addr(i32 %127, %struct.in_addr* %11)
  br label %139

129:                                              ; preds = %113
  %130 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %131 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.sockaddr_in6*
  %134 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %133, i32 0, i32 0
  %135 = bitcast %struct.in6_addr* %12 to i8*
  %136 = bitcast %struct.in6_addr* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 4 %136, i64 4, i1 false)
  %137 = call i32 @ip_2_ip6(%struct.addrinfo* %8)
  %138 = call i32 @inet6_addr_to_ip6addr(i32 %137, %struct.in6_addr* %12)
  br label %139

139:                                              ; preds = %129, %119
  %140 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %141 = call i32 @freeaddrinfo(%struct.addrinfo* %140)
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %143 = bitcast %struct.addrinfo* %142 to i8*
  %144 = bitcast %struct.addrinfo* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 16, i1 false)
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i32* null, i32** %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %147 = load i32, i32* @cmd_ping_on_ping_end, align 4
  store i32 %147, i32* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %149 = load i32, i32* @cmd_ping_on_ping_timeout, align 4
  store i32 %149, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 3
  %151 = load i32, i32* @cmd_ping_on_ping_success, align 4
  store i32 %151, i32* %150, align 8
  %152 = call i32 @esp_ping_new_session(%struct.TYPE_19__* %6, %struct.TYPE_20__* %13, i32* %14)
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @esp_ping_start(i32 %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %139, %106, %20
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local void @ESP_PING_DEFAULT_CONFIG(%struct.TYPE_19__* sret, ...) #1

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @inet_addr_to_ip4addr(i32, %struct.in_addr*) #1

declare dso_local i32 @ip_2_ip4(%struct.addrinfo*) #1

declare dso_local i32 @inet6_addr_to_ip6addr(i32, %struct.in6_addr*) #1

declare dso_local i32 @ip_2_ip6(%struct.addrinfo*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @esp_ping_new_session(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @esp_ping_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
