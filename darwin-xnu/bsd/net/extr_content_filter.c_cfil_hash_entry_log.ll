; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_hash_entry_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_hash_entry_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.cfil_hash_entry = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MAX_IPv6_STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"<%s>: <UDP so %llx, entry %p, sockID %llu> lport %d fport %d laddr %s faddr %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.socket*, %struct.cfil_hash_entry*, i32, i8*)* @cfil_hash_entry_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_hash_entry_log(i32 %0, %struct.socket* %1, %struct.cfil_hash_entry* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.cfil_hash_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.cfil_hash_entry* %2, %struct.cfil_hash_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @MAX_IPv6_STR_LEN, align 4
  %17 = add nsw i32 %16, 6
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @MAX_IPv6_STR_LEN, align 4
  %22 = add nsw i32 %21, 6
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load %struct.socket*, %struct.socket** %7, align 8
  %26 = icmp eq %struct.socket* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %29 = icmp eq %struct.cfil_hash_entry* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %5
  store i32 1, i32* %15, align 4
  br label %89

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %32, align 16
  %33 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %33, align 16
  %34 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %35 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %71 [
    i32 128, label %37
    i32 129, label %52
  ]

37:                                               ; preds = %31
  %38 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %39 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = trunc i64 %18 to i32
  %44 = call i32 @inet_ntop(i32 128, i8* %42, i8* %20, i32 %43)
  %45 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %46 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = bitcast i32* %47 to i8*
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = trunc i64 %18 to i32
  %51 = call i32 @inet_ntop(i32 128, i8* %49, i8* %24, i32 %50)
  br label %72

52:                                               ; preds = %31
  %53 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %54 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = trunc i64 %18 to i32
  %61 = call i32 @inet_ntop(i32 129, i8* %59, i8* %20, i32 %60)
  %62 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %63 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %14, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = trunc i64 %18 to i32
  %70 = call i32 @inet_ntop(i32 129, i8* %68, i8* %24, i32 %69)
  br label %72

71:                                               ; preds = %31
  store i32 1, i32* %15, align 4
  br label %89

72:                                               ; preds = %52, %37
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.socket*, %struct.socket** %7, align 8
  %76 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %75)
  %77 = trunc i64 %76 to i32
  %78 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %81 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ntohs(i32 %82)
  %84 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %85 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ntohs(i32 %86)
  %88 = call i32 @CFIL_LOG(i32 %73, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %74, i32 %77, %struct.cfil_hash_entry* %78, i32 %79, i32 %83, i32 %87, i8* %20, i8* %24)
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %72, %71, %30
  %90 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %15, align 4
  switch i32 %91, label %93 [
    i32 0, label %92
    i32 1, label %92
  ]

92:                                               ; preds = %89, %89
  ret void

93:                                               ; preds = %89
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #2

declare dso_local i32 @CFIL_LOG(i32, i8*, i8*, i32, %struct.cfil_hash_entry*, i32, i32, i32, i8*, i8*) #2

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
