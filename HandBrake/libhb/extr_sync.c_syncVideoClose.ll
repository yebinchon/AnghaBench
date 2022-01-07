; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_syncVideoClose.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_syncVideoClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, i32 (%struct.TYPE_14__*)*, i32*, %struct.TYPE_13__*, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"sync: got %d frames, %d expected\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"sync: framerate min %.3f fps, max %.3f fps, avg %.3f fps\00", align 1
@HB_PASS_ENCODE_1ST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @syncVideoClose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syncVideoClose(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %199

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 9
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %4, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, i32, i32, ...) @hb_log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %14
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %37
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sitofp i32 %56 to double
  %58 = fdiv double 9.000000e+04, %57
  %59 = fptosi double %58 to i32
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double 9.000000e+04, %65
  %67 = fptosi double %66 to i32
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to double
  %74 = fmul double %73, 9.000000e+04
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %74, %80
  %82 = call i32 (i8*, i32, i32, ...) @hb_log(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %67, double %81)
  br label %83

83:                                               ; preds = %51, %44, %37, %14
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @HB_PASS_ENCODE_1ST, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.TYPE_16__* @hb_interjob_get(i32 %92)
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** %5, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 7
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %89, %83
  br label %102

102:                                              ; preds = %110, %101
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.TYPE_14__* @hb_list_item(i32 %107, i32 0)
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %6, align 8
  %109 = icmp ne %struct.TYPE_14__* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %102
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 7
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = call i32 @hb_list_rem(i32 %115, %struct.TYPE_14__* %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = call i32 @free(%struct.TYPE_14__* %118)
  br label %102

120:                                              ; preds = %102
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 6
  %125 = call i32 @hb_list_close(i32* %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 5
  %130 = call i32 @hb_list_empty(i32* %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 4
  %135 = call i32 @hb_list_empty(i32* %134)
  br label %136

136:                                              ; preds = %171, %120
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.TYPE_14__* @hb_list_item(i32 %141, i32 0)
  store %struct.TYPE_14__* %142, %struct.TYPE_14__** %7, align 8
  %143 = icmp ne %struct.TYPE_14__* %142, null
  br i1 %143, label %144, label %174

144:                                              ; preds = %136
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = call i32 @hb_list_rem(i32 %149, %struct.TYPE_14__* %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %144
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 6
  %159 = call i32 @hb_thread_close(i32** %158)
  br label %160

160:                                              ; preds = %156, %144
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 5
  %163 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %162, align 8
  %164 = icmp ne i32 (%struct.TYPE_14__*)* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 5
  %168 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %170 = call i32 %168(%struct.TYPE_14__* %169)
  br label %171

171:                                              ; preds = %165, %160
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %173 = call i32 @free(%struct.TYPE_14__* %172)
  br label %136

174:                                              ; preds = %136
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = call i32 @hb_list_close(i32* %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 3
  %184 = call i32 @hb_lock_close(i32* %183)
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = call i32 @free(%struct.TYPE_14__* %189)
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = call i32 @free(%struct.TYPE_14__* %193)
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = call i32 @free(%struct.TYPE_14__* %195)
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %198, align 8
  br label %199

199:                                              ; preds = %174, %13
  ret void
}

declare dso_local i32 @hb_log(i8*, i32, i32, ...) #1

declare dso_local %struct.TYPE_16__* @hb_interjob_get(i32) #1

declare dso_local %struct.TYPE_14__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @hb_list_close(i32*) #1

declare dso_local i32 @hb_list_empty(i32*) #1

declare dso_local i32 @hb_thread_close(i32**) #1

declare dso_local i32 @hb_lock_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
