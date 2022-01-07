; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sblastmbufchk.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sblastmbufchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf*, %struct.mbuf* }

@.str = private unnamed_addr constant [52 x i8] c"sblastmbufchk: mb 0x%llx mbtail 0x%llx last 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"packet tree:\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%llx \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"sblastmbufchk from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sblastmbufchk(%struct.sockbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %8 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %7, i32 0, i32 0
  %9 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %9, %struct.mbuf** %5, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 1
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  store %struct.mbuf* %23, %struct.mbuf** %5, align 8
  br label %10

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %35, %24
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %27 = icmp ne %struct.mbuf* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = load %struct.mbuf*, %struct.mbuf** %30, align 8
  %32 = icmp ne %struct.mbuf* %31, null
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  store %struct.mbuf* %38, %struct.mbuf** %5, align 8
  br label %25

39:                                               ; preds = %33
  %40 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %41 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %42 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %41, i32 0, i32 1
  %43 = load %struct.mbuf*, %struct.mbuf** %42, align 8
  %44 = icmp ne %struct.mbuf* %40, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %39
  %46 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %47 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %46, i32 0, i32 0
  %48 = load %struct.mbuf*, %struct.mbuf** %47, align 8
  %49 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %48)
  %50 = trunc i64 %49 to i32
  %51 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %52 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %51, i32 0, i32 1
  %53 = load %struct.mbuf*, %struct.mbuf** %52, align 8
  %54 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %53)
  %55 = trunc i64 %54 to i32
  %56 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %57 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %56)
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %55, i32 %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %62 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %61, i32 0, i32 0
  %63 = load %struct.mbuf*, %struct.mbuf** %62, align 8
  store %struct.mbuf* %63, %struct.mbuf** %5, align 8
  br label %64

64:                                               ; preds = %84, %45
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %66 = icmp ne %struct.mbuf* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %69, %struct.mbuf** %6, align 8
  br label %70

70:                                               ; preds = %78, %67
  %71 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %72 = icmp ne %struct.mbuf* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %74)
  %76 = trunc i64 %75 to i32
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73
  %79 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = load %struct.mbuf*, %struct.mbuf** %80, align 8
  store %struct.mbuf* %81, %struct.mbuf** %6, align 8
  br label %70

82:                                               ; preds = %70
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 1
  %87 = load %struct.mbuf*, %struct.mbuf** %86, align 8
  store %struct.mbuf* %87, %struct.mbuf** %5, align 8
  br label %64

88:                                               ; preds = %64
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %39
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
