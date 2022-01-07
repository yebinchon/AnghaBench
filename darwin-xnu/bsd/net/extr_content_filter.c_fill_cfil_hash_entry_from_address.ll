; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_fill_cfil_hash_entry_from_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_fill_cfil_hash_entry_from_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_hash_entry = type { i32, %struct.TYPE_14__, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfil_hash_entry*, i32, %struct.sockaddr*)* @fill_cfil_hash_entry_from_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_cfil_hash_entry_from_address(%struct.cfil_hash_entry* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfil_hash_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.cfil_hash_entry* %0, %struct.cfil_hash_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %8, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %9, align 8
  %10 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %11 = icmp eq %struct.cfil_hash_entry* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = icmp eq %struct.sockaddr* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %4, align 4
  br label %113

17:                                               ; preds = %12
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %111 [
    i32 129, label %21
    i32 128, label %69
  ]

21:                                               ; preds = %17
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = call %struct.sockaddr_in* @satosin(%struct.sockaddr* %22)
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %8, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 12
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %113

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %40 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %46 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  br label %65

50:                                               ; preds = %31
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %55 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %61 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %50, %35
  %66 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %67 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %66, i32 0, i32 0
  store i32 129, i32* %67, align 4
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %4, align 4
  br label %113

69:                                               ; preds = %17
  %70 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %71 = call %struct.sockaddr_in6* @satosin6(%struct.sockaddr* %70)
  store %struct.sockaddr_in6* %71, %struct.sockaddr_in6** %9, align 8
  %72 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 12
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %4, align 4
  br label %113

79:                                               ; preds = %69
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @TRUE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %88 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %93 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  br label %107

95:                                               ; preds = %79
  %96 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %97 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %100 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %105 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %95, %83
  %108 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %109 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %108, i32 0, i32 0
  store i32 128, i32* %109, align 4
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %4, align 4
  br label %113

111:                                              ; preds = %17
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %107, %77, %65, %29, %15
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.sockaddr_in* @satosin(%struct.sockaddr*) #1

declare dso_local %struct.sockaddr_in6* @satosin6(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
