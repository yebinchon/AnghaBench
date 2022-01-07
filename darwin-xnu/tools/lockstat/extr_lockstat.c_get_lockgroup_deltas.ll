; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/lockstat/extr_lockstat.c_get_lockgroup_deltas.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/lockstat/extr_lockstat.c_get_lockgroup_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@host_control = common dso_local global i32 0, align 4
@lockgroup_info = common dso_local global %struct.TYPE_8__* null, align 8
@count = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"host_statistics\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@lockgroup_deltas = common dso_local global %struct.TYPE_7__* null, align 8
@lockgroup_start = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_lockgroup_deltas() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @host_control, align 4
  %4 = call i64 @host_lockgroup_info(i32 %3, %struct.TYPE_8__** @lockgroup_info, i32* @count)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @KERN_SUCCESS, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @mach_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32, i32* @EXIT_FAILURE, align 4
  %12 = call i32 @exit(i32 %11) #3
  unreachable

13:                                               ; preds = %0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %16 = load i32, i32* @count, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memcpy(%struct.TYPE_7__* %14, %struct.TYPE_8__* %15, i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %188, %13
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @count, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %191

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %33 = load i32, i32* %2, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %31, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %40 = load i32, i32* %2, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 8
  store i64 %38, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %45 = load i32, i32* %2, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %51 = load i32, i32* %2, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %49, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %58 = load i32, i32* %2, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 7
  store i64 %56, i64* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %63 = load i32, i32* %2, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %69 = load i32, i32* %2, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %67, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %76 = load i32, i32* %2, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 6
  store i64 %74, i64* %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %81 = load i32, i32* %2, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %87 = load i32, i32* %2, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %85, %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %94 = load i32, i32* %2, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 5
  store i64 %92, i64* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %99 = load i32, i32* %2, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %105 = load i32, i32* %2, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %103, %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %112 = load i32, i32* %2, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  store i64 %110, i64* %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %117 = load i32, i32* %2, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %123 = load i32, i32* %2, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %121, %127
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %130 = load i32, i32* %2, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store i64 %128, i64* %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %135 = load i32, i32* %2, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %141 = load i32, i32* %2, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %139, %145
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %148 = load i32, i32* %2, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  store i64 %146, i64* %151, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %153 = load i32, i32* %2, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %159 = load i32, i32* %2, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %157, %163
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %166 = load i32, i32* %2, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  store i64 %164, i64* %169, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %171 = load i32, i32* %2, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %177 = load i32, i32* %2, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %175, %181
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_deltas, align 8
  %184 = load i32, i32* %2, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  store i64 %182, i64* %187, align 8
  br label %188

188:                                              ; preds = %25
  %189 = load i32, i32* %2, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %2, align 4
  br label %21

191:                                              ; preds = %21
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lockgroup_start, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lockgroup_info, align 8
  %194 = load i32, i32* @count, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = call i32 @memcpy(%struct.TYPE_7__* %192, %struct.TYPE_8__* %193, i32 %197)
  ret void
}

declare dso_local i64 @host_lockgroup_info(i32, %struct.TYPE_8__**, i32*) #1

declare dso_local i32 @mach_error(i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
