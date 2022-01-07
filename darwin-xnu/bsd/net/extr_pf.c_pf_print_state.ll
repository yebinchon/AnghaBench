; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_print_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.pf_state_key* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.pf_state_key = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ESP \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GRE%u \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TCP \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UDP \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ICMP \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ICMPV6 \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c" [lo=%u high=%u win=%u modulator=%u\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" wscale=%u\00", align 1
@PF_WSCALE_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" %u:%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_print_state(%struct.pf_state* %0) #0 {
  %2 = alloca %struct.pf_state*, align 8
  %3 = alloca %struct.pf_state_key*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %2, align 8
  %4 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %5 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %4, i32 0, i32 2
  %6 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  store %struct.pf_state_key* %6, %struct.pf_state_key** %3, align 8
  %7 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %8 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %25 [
    i32 133, label %10
    i32 132, label %12
    i32 129, label %17
    i32 128, label %19
    i32 131, label %21
    i32 130, label %23
  ]

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %14 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %30

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %30

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %30

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %30

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %27 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %23, %21, %19, %17, %12, %10
  %31 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %32 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %31, i32 0, i32 7
  %33 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %34 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %37 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %40 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pf_print_sk_host(i32* %32, i32 %35, i32 %38, i32 %41)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %44 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %45 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %44, i32 0, i32 6
  %46 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %47 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %50 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %53 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pf_print_sk_host(i32* %45, i32 %48, i32 %51, i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %57 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %58 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %57, i32 0, i32 5
  %59 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %60 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %63 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %66 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pf_print_sk_host(i32* %58, i32 %61, i32 %64, i32 %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %70 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %71 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %70, i32 0, i32 3
  %72 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %73 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %76 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pf_state_key*, %struct.pf_state_key** %3, align 8
  %79 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pf_print_sk_host(i32* %71, i32 %74, i32 %77, i32 %80)
  %82 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %83 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %87 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %91 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %95 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %85, i32 %89, i32 %93, i32 %97)
  %99 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %100 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %30
  %105 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %106 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %112 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @PF_WSCALE_MASK, align 4
  %116 = and i32 %114, %115
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %110, %104, %30
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %120 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %121 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %125 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %129 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %133 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %123, i32 %127, i32 %131, i32 %135)
  %137 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %138 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %118
  %143 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %144 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %150 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PF_WSCALE_MASK, align 4
  %154 = and i32 %152, %153
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %148, %142, %118
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %158 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %159 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %163 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %161, i32 %165)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pf_print_sk_host(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
