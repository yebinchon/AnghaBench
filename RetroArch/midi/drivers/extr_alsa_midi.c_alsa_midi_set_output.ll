; ModuleID = '/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_set_output.c'
source_filename = "/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SND_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SND_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"out\00", align 1
@SND_SEQ_PORT_CAP_READ = common dso_local global i32 0, align 4
@SND_SEQ_PORT_CAP_SUBS_READ = common dso_local global i32 0, align 4
@SND_SEQ_PORT_TYPE_APPLICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"[MIDI]: snd_seq_create_simple_port failed with error %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"[MIDI]: snd_seq_connect_to failed with error %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"[MIDI]: snd_seq_alloc_queue failed with error %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"[MIDI]: snd_seq_start_queue failed with error %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @alsa_midi_set_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_midi_set_output(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_seq_stop_queue(i32 %20, i32 %23, i32* null)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_seq_free_queue(i32 %27, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  br label %34

34:                                               ; preds = %17, %12
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_seq_delete_simple_port(i32 %43, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 4
  br label %52

52:                                               ; preds = %40, %34
  store i32 1, i32* %3, align 4
  br label %143

53:                                               ; preds = %2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @SND_SEQ_PORT_CAP_WRITE, align 4
  %59 = load i32, i32* @SND_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = call i32 @alsa_midi_get_port(i32 %56, i8* %57, i32 %60, %struct.TYPE_6__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %143

66:                                               ; preds = %53
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SND_SEQ_PORT_CAP_READ, align 4
  %71 = load i32, i32* @SND_SEQ_PORT_CAP_SUBS_READ, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SND_SEQ_PORT_TYPE_APPLICATION, align 4
  %74 = call i32 @snd_seq_create_simple_port(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %3, align 4
  br label %143

80:                                               ; preds = %66
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @snd_seq_client_id(i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @snd_seq_connect_to(i32 %94, i32 %98, i32 %102, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %80
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  store i32 0, i32* %3, align 4
  br label %143

113:                                              ; preds = %80
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @snd_seq_alloc_queue(i32 %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  store i32 0, i32* %3, align 4
  br label %143

129:                                              ; preds = %113
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @snd_seq_start_queue(i32 %132, i32 %135, i32* null)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  store i32 0, i32* %3, align 4
  br label %143

142:                                              ; preds = %129
  store i32 1, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %139, %124, %110, %77, %65, %52
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @snd_seq_stop_queue(i32, i32, i32*) #1

declare dso_local i32 @snd_seq_free_queue(i32, i32) #1

declare dso_local i32 @snd_seq_delete_simple_port(i32, i32) #1

declare dso_local i32 @alsa_midi_get_port(i32, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_seq_create_simple_port(i32, i8*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @snd_seq_client_id(i32) #1

declare dso_local i32 @snd_seq_connect_to(i32, i32, i32, i32) #1

declare dso_local i32 @snd_seq_alloc_queue(i32) #1

declare dso_local i32 @snd_seq_start_queue(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
