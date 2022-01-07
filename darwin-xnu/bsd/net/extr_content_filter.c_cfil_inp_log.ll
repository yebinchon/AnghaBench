; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_inp_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_inp_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.inpcb = type { i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MAX_IPv6_STR_LEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"<%s>: <%s so %llx - flags 0x%x 0x%x, sockID %llu> lport %d fport %d laddr %s faddr %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"<%s>: <%s so %llx - flags 0x%x 0x%x> lport %d fport %d laddr %s faddr %s\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.socket*, i8*)* @cfil_inp_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_inp_log(i32 %0, %struct.socket* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.inpcb* null, %struct.inpcb** %7, align 8
  %13 = load i32, i32* @MAX_IPv6_STR_LEN, align 4
  %14 = add nsw i32 %13, 6
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @MAX_IPv6_STR_LEN, align 4
  %19 = add nsw i32 %18, 6
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = icmp eq %struct.socket* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %118

25:                                               ; preds = %3
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = call %struct.inpcb* @sotoinpcb(%struct.socket* %26)
  store %struct.inpcb* %27, %struct.inpcb** %7, align 8
  %28 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %29 = icmp eq %struct.inpcb* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  br label %118

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %32, align 16
  %33 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %33, align 16
  %34 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %11, align 8
  %38 = load i32, i32* @AF_INET, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = trunc i64 %15 to i32
  %41 = call i32 @inet_ntop(i32 %38, i8* %39, i8* %17, i32 %40)
  %42 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %11, align 8
  %46 = load i32, i32* @AF_INET, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = trunc i64 %15 to i32
  %49 = call i32 @inet_ntop(i32 %46, i8* %47, i8* %21, i32 %48)
  %50 = load %struct.socket*, %struct.socket** %5, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %89

54:                                               ; preds = %31
  %55 = load i32, i32* %4, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.socket*, %struct.socket** %5, align 8
  %58 = call i64 @IS_UDP(%struct.socket* %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %62 = load %struct.socket*, %struct.socket** %5, align 8
  %63 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %62)
  %64 = trunc i64 %63 to i32
  %65 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %66 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %69 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %68, i32 0, i32 3
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.socket*, %struct.socket** %5, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %79 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ntohs(i32 %80)
  %82 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %83 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 (i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, ...) @CFIL_LOG(i32 %55, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %61, i32 %64, i32 %67, i32 %72, i32 %77, i32 %81, i8* %87, i8* %17, i8* %21)
  br label %117

89:                                               ; preds = %31
  %90 = load i32, i32* %4, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.socket*, %struct.socket** %5, align 8
  %93 = call i64 @IS_UDP(%struct.socket* %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %97 = load %struct.socket*, %struct.socket** %5, align 8
  %98 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %97)
  %99 = trunc i64 %98 to i32
  %100 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %101 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %104 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %103, i32 0, i32 3
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %109 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ntohs(i32 %110)
  %112 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %113 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ntohs(i32 %114)
  %116 = call i32 (i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, ...) @CFIL_LOG(i32 %90, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i8* %91, i8* %96, i32 %99, i32 %102, i32 %107, i32 %111, i32 %115, i8* %17, i8* %21)
  br label %117

117:                                              ; preds = %89, %54
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %117, %30, %24
  %119 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %12, align 4
  switch i32 %120, label %122 [
    i32 0, label %121
    i32 1, label %121
  ]

121:                                              ; preds = %118, %118
  ret void

122:                                              ; preds = %118
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #2

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #2

declare dso_local i32 @CFIL_LOG(i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, ...) #2

declare dso_local i64 @IS_UDP(%struct.socket*) #2

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #2

declare dso_local i32 @ntohs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
