; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_cp_flow_set_to_32_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_cp_flow_set_to_32_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_flow_set = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dn_flow_set_32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@user32_addr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_flow_set*, %struct.dn_flow_set_32*)* @cp_flow_set_to_32_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_flow_set_to_32_user(%struct.dn_flow_set* %0, %struct.dn_flow_set_32* %1) #0 {
  %3 = alloca %struct.dn_flow_set*, align 8
  %4 = alloca %struct.dn_flow_set_32*, align 8
  store %struct.dn_flow_set* %0, %struct.dn_flow_set** %3, align 8
  store %struct.dn_flow_set_32* %1, %struct.dn_flow_set_32** %4, align 8
  %5 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %6 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %5, i32 0, i32 24
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %9 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %8, i32 0, i32 24
  store i32 %7, i32* %9, align 4
  %10 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %11 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %10, i32 0, i32 23
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %14 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %13, i32 0, i32 23
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %16 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %15, i32 0, i32 22
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %19 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %18, i32 0, i32 22
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %21 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %20, i32 0, i32 21
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %24 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %23, i32 0, i32 21
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %26 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %29 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %28, i32 0, i32 20
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %31 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %34 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %33, i32 0, i32 19
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %36 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %39 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %38, i32 0, i32 18
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %41 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %44 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %43, i32 0, i32 17
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %46 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %49 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %48, i32 0, i32 16
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %51 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %54 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %53, i32 0, i32 15
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %56 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %59 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %58, i32 0, i32 14
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %61 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %64 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %66 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %69 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %71 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %74 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %76 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %79 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 4
  %80 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %81 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %84 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %86 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %89 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %91 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %94 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %96 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %99 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @user32_addr_t, align 4
  %101 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %102 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CAST_DOWN_EXPLICIT(i32 %100, i32 %103)
  %105 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %106 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %108 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %111 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %113 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %116 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %118 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %121 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %123 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %126 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %128 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dn_flow_set_32*, %struct.dn_flow_set_32** %4, align 8
  %131 = getelementptr inbounds %struct.dn_flow_set_32, %struct.dn_flow_set_32* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  ret void
}

declare dso_local i32 @CAST_DOWN_EXPLICIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
