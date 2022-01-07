; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sblastrecordchk.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sblastrecordchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@.str = private unnamed_addr constant [58 x i8] c"sblastrecordchk: mb 0x%llx lastrecord 0x%llx last 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"packet chain:\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\090x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"sblastrecordchk from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sblastrecordchk(%struct.sockbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %7 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %6, i32 0, i32 0
  %8 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %8, %struct.mbuf** %5, align 8
  br label %9

9:                                                ; preds = %19, %2
  %10 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %11 = icmp ne %struct.mbuf* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %16 = icmp ne %struct.mbuf* %15, null
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  store %struct.mbuf* %22, %struct.mbuf** %5, align 8
  br label %9

23:                                               ; preds = %17
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %26 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %25, i32 0, i32 1
  %27 = load %struct.mbuf*, %struct.mbuf** %26, align 8
  %28 = icmp ne %struct.mbuf* %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 0
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  %33 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %32)
  %34 = trunc i64 %33 to i32
  %35 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 1
  %37 = load %struct.mbuf*, %struct.mbuf** %36, align 8
  %38 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %37)
  %39 = trunc i64 %38 to i32
  %40 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %41 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %40)
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39, i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %46 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %45, i32 0, i32 0
  %47 = load %struct.mbuf*, %struct.mbuf** %46, align 8
  store %struct.mbuf* %47, %struct.mbuf** %5, align 8
  br label %48

48:                                               ; preds = %56, %29
  %49 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %50 = icmp ne %struct.mbuf* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %53 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %52)
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51
  %57 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 0
  %59 = load %struct.mbuf*, %struct.mbuf** %58, align 8
  store %struct.mbuf* %59, %struct.mbuf** %5, align 8
  br label %48

60:                                               ; preds = %48
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %23
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.mbuf*) #1

declare dso_local i32 @panic(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
