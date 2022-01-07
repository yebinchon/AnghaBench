; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_cp_to_user_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_cp_to_user_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_fw_64 = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ip6_fw = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IPV6_FW_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_fw_64*, %struct.ip6_fw*)* @cp_to_user_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_to_user_64(%struct.ip6_fw_64* %0, %struct.ip6_fw* %1) #0 {
  %3 = alloca %struct.ip6_fw_64*, align 8
  %4 = alloca %struct.ip6_fw*, align 8
  store %struct.ip6_fw_64* %0, %struct.ip6_fw_64** %3, align 8
  store %struct.ip6_fw* %1, %struct.ip6_fw** %4, align 8
  %5 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %6 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %5, i32 0, i32 22
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %9 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %8, i32 0, i32 22
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %11 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %10, i32 0, i32 21
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CAST_USER_ADDR_T(i32 %12)
  %14 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %15 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %14, i32 0, i32 21
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %17 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %16, i32 0, i32 20
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %20 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %19, i32 0, i32 20
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %22 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %21, i32 0, i32 19
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %25 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %24, i32 0, i32 19
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %27 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %26, i32 0, i32 18
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %30 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %29, i32 0, i32 18
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %32 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %31, i32 0, i32 17
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %35 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %34, i32 0, i32 17
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %37 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %36, i32 0, i32 16
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %40 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %39, i32 0, i32 16
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %42 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %45 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %44, i32 0, i32 15
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %47 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %50 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %49, i32 0, i32 14
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %52 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %55 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %54, i32 0, i32 13
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %57 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %60 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %59, i32 0, i32 12
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %62 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %65 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IPV6_FW_MAX_PORTS, align 4
  %68 = call i32 @bcopy(i32 %63, i32 %66, i32 %67)
  %69 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %70 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %73 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %75 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %78 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %80 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %83 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %85 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %88 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %90 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %93 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @bcopy(i32 %91, i32 %94, i32 4)
  %96 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %97 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %100 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %102 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %105 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %107 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %110 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %112 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %116 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %119 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %122 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %124 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ip6_fw_64*, %struct.ip6_fw_64** %3, align 8
  %127 = getelementptr inbounds %struct.ip6_fw_64, %struct.ip6_fw_64* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  ret void
}

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
